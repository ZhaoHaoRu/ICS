/*
 * proxy.c - ICS Web proxy
 *
 *
 */

#include "csapp.h"
#include <stdarg.h>
#include <limits.h>
#include <string.h>
#include <sys/select.h>

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, char *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, size_t size);
void doit(int fd, struct sockaddr_in *sockaddr);
void *thread(void *vargp);
sem_t mutex;
ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen);
ssize_t Rio_writen_w(int fd, void *usrbuf, size_t n);
int init_header(rio_t *rio, char *buf, char *header, int *size);
typedef struct 
{
    int connfd;
    struct sockaddr_in sockaddr;
}connfdp;

/*
 * main - Main routine for the proxy program
 */
int main(int argc, char **argv)
{
    int listenfd, connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    pthread_t tid;
    struct sockaddr_in clientaddr;
    
    /* Check arguments */
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port number>\n", argv[0]);
        exit(0);
    }

    Signal(SIGPIPE, SIG_IGN);
    listenfd = Open_listenfd(argv[1]);
    Sem_init(&mutex, 0, 1);
    while(1){
        clientaddr.sin_family = AF_INET;
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        connfdp *connfdp_struct = (connfdp*)Malloc(sizeof(connfdp));
        Getnameinfo((SA*)&clientaddr, clientlen, hostname, MAXLINE,port, MAXLINE, 0);
        // printf("Accepted connection from (%s, %s)\n", hostname, port);
        connfdp_struct->connfd = connfd;
        connfdp_struct->sockaddr = clientaddr;
        Pthread_create(&tid, NULL, thread, connfdp_struct);
    }
    exit(0);
}


/*
 * parse_uri - URI parser
 *
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, char *port)
{
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0) {
        hostname[0] = '\0';
        return -1;
    }

    /* Extract the host name */
    hostbegin = uri + 7;
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    if (hostend == NULL)
        return -1;
    len = hostend - hostbegin;
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';

    /* Extract the port number */
    if (*hostend == ':') {
        char *p = hostend + 1;
        while (isdigit(*p))
            *port++ = *p++;
        *port = '\0';
    } else {
        strcpy(port, "80");
    }

    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL) {
        pathname[0] = '\0';
    }
    else {
        pathbegin++;
        strcpy(pathname, pathbegin);
    }

    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring.
 *
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), the number of bytes
 * from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr,
                      char *uri, size_t size)
{
    time_t now;
    char time_str[MAXLINE];
    char host[INET_ADDRSTRLEN];

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    if (inet_ntop(AF_INET, &sockaddr->sin_addr, host, sizeof(host)) == NULL)
        unix_error("Convert sockaddr_in to string representation failed\n");

    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %s %s %zu", time_str, host, uri, size);
}


void doit(int fd, struct sockaddr_in *sockaddr){
    char clientbuf[MAXLINE], serverbuf[MAXLINE], header[MAXLINE], response_header[MAXLINE];
    char method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char host[MAXLINE], path[MAXLINE], port[MAXLINE];
    int content_length = 0, response_content_length = 0;
    rio_t client_rio, server_rio;

    //handle request from the client
    Rio_readinitb(&server_rio, fd);
    if(!Rio_readlineb_w(&server_rio, serverbuf, MAXLINE)) {
        return;
    }
  
    //prepare sending the message to the server
    sscanf(serverbuf, "%s %s %s", method, uri, version);

    if(parse_uri(uri, host, path, port) != 0){
        return;
    }
    sprintf(header, "%s /%s %s\r\n", method, path, version);
    if(init_header(&server_rio, serverbuf, header, &content_length) == 0){
        return;
    }
    

    //prepare sending the message to the server
    int clientfd = open_clientfd(host, port);
    if(!clientfd)
        return ;
    Rio_readinitb(&client_rio, clientfd);

       
    //send the header to server
    int req_header_length = strlen(header);
    if(Rio_writen_w(clientfd, header, req_header_length) != req_header_length){
        close(clientfd);
    }
    
    //send the content to the server
    if(content_length != 0){
        if(Rio_readnb_w(&server_rio, serverbuf,content_length) == 0) {
            close(clientfd);
            return;
        }
        if(Rio_writen_w(clientfd, serverbuf, content_length) == 0){
            close(clientfd);
            return;
        }
    }

    //receive from the server and send the header to the client
    int res_header_length = 0;
    if(init_header(&client_rio, clientbuf, response_header, &response_content_length) == 0){
        close(clientfd);
        return;
    }
    res_header_length = strlen(response_header);
    if(Rio_writen_w(fd, response_header, res_header_length) != res_header_length){
        close(clientfd);
        return;
    }

    //send the content to the client   
    if(response_content_length > 3 * MAXLINE){
        for(int i = response_content_length; i > 0; --i){
            if(Rio_readnb_w(&client_rio, clientbuf, 1) == 0){
                close(clientfd);
                return;
            }
            if(Rio_writen_w(fd, clientbuf, 1) == 0){
                close(clientfd);
                return;
            }
        }
    }
    else{
        if(Rio_readnb_w(&client_rio, clientbuf, response_content_length) != response_content_length){
            close(clientfd);
            return;
        }
        if(Rio_writen_w(fd, clientbuf, response_content_length) != response_content_length){
            close(clientfd);
            return;
        }
    }
    //print the message
    char logstring[MAXLINE];
    format_log_entry(logstring, sockaddr, uri, response_content_length + res_header_length);
    P(&mutex);
    printf("%s\n", logstring);
    V(&mutex);
    close(clientfd);
    return;

}

ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n) {
    ssize_t result = Rio_readnb(rp, usrbuf, n);
    if(result < 0){
        fprintf(stderr, "rio_readn error!\n");
        return 0;
    }
    return result;
}

ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen) {
    ssize_t result = Rio_readlineb(rp, usrbuf, maxlen);
    if(result < 0){
        fprintf(stderr, "rio_readlineb error!\n");
        return 0;
    }
    return result;
}

ssize_t Rio_writen_w(int fd, void *usrbuf, size_t n) {
    ssize_t result = rio_writen(fd, usrbuf, n);
    if(result < 0){
        fprintf(stderr, "rio_writen error!\n");
        return 0;
    }
    return result;
}

int init_header(rio_t *rio, char *buf, char *header, int *size)
{
    ssize_t n = 0;
    while((n = Rio_readlineb_w(rio, buf, MAXLINE)) != 0) {
        if(strncasecmp(buf, "Content-Length", 14) == 0){
            *size = atoi(buf + 15);
        }
        strcat(header, buf);
        if(!strcmp(buf, "\r\n")){
            break;
        }
    }
    return n;
}

void* thread(void *vargp)
{
    connfdp connfdp_struct= *(connfdp*)vargp;
    Pthread_detach(Pthread_self());
    struct sockaddr_in sockaddr;
    sockaddr = connfdp_struct.sockaddr;
    int connfd = connfdp_struct.connfd;
    Free(vargp);
    doit(connfd, &sockaddr);
    close(connfd);
    return NULL;
}
