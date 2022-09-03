// 赵浩如
// 520021910352

#include <unistd.h>
#include <math.h>
#include <stdio.h>
#include <getopt.h>
#include <string.h>
#include <stdlib.h>
#include "cachelab.h"

int s, E, b, S;
int hits = 0, misses = 0, evictions = 0;
typedef struct  //注意C语言中结构体的定义方式
{
    int validBit;
    unsigned long tag;
    int stamp;
}cacheLine;


cacheLine **cache = NULL;

void initCache()
{
    S = pow(2, s);
    cache = (cacheLine**)malloc(sizeof(cacheLine*) * S);  //sizeof(int*),不能少*，一个指针的内存大小，每个元素是一个指针。
    if(cache == NULL){
        printf("bad aclloc!\n");
        exit(-1);
    }
    for (int i = 0;i < S;i++)
    {
        cache[i] = (cacheLine*)malloc(sizeof(cacheLine) * E);
        if(cache[i] == NULL){
            printf("bad aclloc!\n");
            exit(-1);
        }
        //init every cacheLine
        for(int j = 0; j < E; ++j){
            cache[i][j].validBit = 0;
            cache[i][j].tag = 0;
            cache[i][j].stamp = -1;
        }
    }
}

int Transfer(const unsigned long setIndex, const unsigned long tagBits)
{
    cacheLine *set = cache[setIndex];
    int maxIndex = 0;
    for(int i = 1; i < E; ++i){
        if(set[maxIndex].stamp == -1)
            break;
        if(set[i].stamp > set[maxIndex].stamp || set[i].stamp == -1)
            maxIndex = i;
    }
    if(set[maxIndex].stamp != -1){
        ++evictions;
    }
    set[maxIndex].stamp = 0;
    set[maxIndex].tag = tagBits;
    set[maxIndex].validBit = 1;
    return maxIndex;
}

void updateStamp(const unsigned long setIndex, const int hitIndex)
{
    cacheLine *set = cache[setIndex];
    for(int i = 0; i < E; ++i){
        if(set[i].stamp != -1)
            ++set[i].stamp;
    }
    set[hitIndex].stamp = 0;
}

void Search(unsigned long addr)
{
    // find set index and tag
    unsigned long setIndex = (addr >> b) & ((unsigned long)(~0) >> (64 - s));
    unsigned long tagBits = addr >> (b + s);
    //if out of range
    if(setIndex < 0 || setIndex >= S){
        printf("setIndex error\n");
        exit(-1);
    }
    cacheLine *set = cache[setIndex];
    int i = 0, hitIndex;
    for(; i < E; ++i){
        if(set[i].validBit == 0)
            continue;
        if(set[i].tag == tagBits)
            break;
    }
    if(i >= 0 && i < E){
        ++hits;
        hitIndex = i;
    }
    else{
        ++misses;
        hitIndex = Transfer(setIndex, tagBits);
    }
    //update stamp
    updateStamp(setIndex, hitIndex);
}

int main(int argc, char** argv)
{
    int opt;
    char* fileName;
    while(-1 != (opt = getopt(argc, argv, "s:E:b:t:"))){
        switch(opt) { 
            case 's': 
                s = atoi(optarg); 
                break; 
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                fileName = optarg;
                break;
            default: 
                printf("wrong argument\n"); 
                break; 
        }
    }
    FILE *pFile = NULL;
    pFile =	fopen(fileName, "r");
    if(pFile == NULL){
        printf("Open file error!\n");
        exit(-1);
    }
    char operation;
    unsigned long address;
    int size;
    initCache();
    while(fscanf(pFile, " %c %lx,%d", &operation, &address, &size) > 0){	
        switch (operation)
        {
        case 'L':
            Search(address);
            break;
        case 'S':
            Search(address);
            break;
        case 'M':
            Search(address);
            Search(address);
            break;
        default:
            break;
        }
    }
    fclose(pFile);
    for (int i = 0;i < S;i++){
        free(cache[i]);
    }
    free(cache);
    printSummary(hits, misses, evictions);
    return 0;
}
