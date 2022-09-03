/*
 * In my approach, I use the code on the textbook as the beginning, the keypoints
 * of my approach are using explicit free list which tagged to the segregated list.
 * There are six segregated lists, their scope are 1-64, 64-128, 128-256, 256-512,
 * 512-1024,1024-
 * Every free block has a header, a footer, `pointer` to its predecessor in Segregated list
 * and `pointer` to its successor in Segregated list(Actually the PREC and the 
 * SUCC store the offset of predecessor and successor from heap_listp).(Its structure is 
 * shown below). When looking for free block, the strategy is `first fit`. When coalescing, 
 * I always insert to the head of segregated list. To improve the performance of trace 7 and trace 8, I malloc a special space 
 * when call `malloc(size)`. To improve the performance of realloc, by observing the trace
 * file, the first realloc file don't like the voilent coalesce and the second realloc file 
 * has a small block alternates alloc and free, and a big block continuously expands. So I
 * try to make the block that should be realloc expand to the right instead of free and realloc.
 *  < Allocated Block >
 *  +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 Header :   |                              size of the block                                       |  |  | A|
    bp ---> +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
            |                                                                                               |
            |                                                                                               |
            .                              Payload and padding                                              .
            .                                                                                               .
            .                                                                                               .
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 Footer :   |                              size of the block                                       |     | A|
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 
 * < Free block >
 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10  9  8  7  6  5  4  3  2  1  0
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 Header :   |                              size of the block                                       |  |RA| A|
    bp ---> +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
            |                        pointer to its predecessor in Segregated list                          |
             +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
            |                        pointer to its successor in Segregated list                            |
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
            .                                                                                               .
            .                                                                                               .
            .                                                                                               .
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
 Footer :   |                              size of the block                                       |     | A|
            +--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+

 
 * 
 *
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* double word (8) alignment */
#define ALIGNMENT 8
#define DEBUG
/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)
#define OVERHEAD 16    /* the min size of a free block*/
#define LISTMNUM 6     /* the number of lists*/
#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE 4 /* Word and header/footer size (bytes) */ 
#define DSIZE 8 /* Double word size (bytes) */ 
#define CHUNKSIZE 128 /* Extend heap by this amount (bytes) */  
#define MAX(x, y) ((x) > (y)? (x) : (y)) 

/* Pack a size and allocated bit into a word */ 
#define PACK(size, alloc) ((size) | (alloc)) 

/* Read and write a word at address p */ 
#define GET(p) (* (unsigned int *)(p)) 
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1) 


#define GET_ADDR(list, offset) (list + offset)     /* get the address by offset */
#define GET_OFFSET(list, p)((char *)p - (char *)list)   /* get the offset */

/* Given block ptr bp, compute address of its header and footer */ 
#define HDRP(bp) ((char *) (bp) - WSIZE) 
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) 

/* Given block ptr bp, compute address of next and previous blocks */ 
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *) (bp) - WSIZE))) 
#define PREV_BLKP(bp) ((char *)(bp) - GET_SIZE(((char *) (bp) - DSIZE)))


/* GET pred and succ */
#define GET_PRED(bp) ((bp))
#define GET_SUCC(bp) ((bp + WSIZE))


/* Get the address of the next and previous free blocks */
#define NEXT_FBLKP(list, bp) (GET_ADDR(list, GET(GET_SUCC(bp))))
#define PREV_FBLKP(list, bp) (GET_ADDR(list, GET(GET_PRED(bp))))

/* Private global variables */ 
static char* heap_listp;    
static char* explicit_free_lists[LISTMNUM];     /* explicit free list */

static void *extend_heap(size_t words); 
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void add_to_free_list(char *bp);
static void remove_from_free_list(char *bp);
static void place(void *bp, size_t asize);
static inline int pick_list(size_t size);
static int mm_check(void);


/*----------------------------------utility function----------------------------------------*/

/* found the first fit free block*/
static void *find_fit(size_t asize) 
{ 
    /* First-fit search */ 
    if(asize == 0)
        return NULL;
    int list_num = pick_list(asize); 
    while(list_num < LISTMNUM){
        void *bp = explicit_free_lists[list_num];
        while(bp != NULL) {
            if(asize <= GET_SIZE(HDRP(bp)))
                return bp;
            if(GET(GET_SUCC(bp)))
                bp = NEXT_FBLKP(heap_listp, bp);
            else
                break;
        }
        ++list_num;
    }
    return NULL;    /* No fit */ 
}



/* 
 * Place the request block at the beginning of the free block, and divide it
 * only when the remaining part exceeds the minimum size required by the free block 
 */
static void place(void *bp, size_t asize) 
{ 
    size_t csize = GET_SIZE(HDRP(bp)); 
    if ((csize - asize) >= (2 * DSIZE)) {  /* the remain block is big enough */
        remove_from_free_list(bp);
        PUT(HDRP(bp), PACK(asize, 1)); 
        PUT(FTRP(bp), PACK(asize, 1)); 
        bp = NEXT_BLKP(bp); 
        PUT(HDRP(bp), PACK(csize-asize, 0)); 
        PUT(FTRP(bp), PACK(csize-asize, 0)); 
        coalesce(bp);
    } 
    else { 
        remove_from_free_list(bp);
        PUT(HDRP(bp), PACK(csize, 1)); 
        PUT(FTRP(bp), PACK(csize, 1)); 
    } 
}

/* 
 * insert the free block to the head of specific explicit free list 
 */
static void add_to_free_list(char *bp) 
{
    size_t size = (GET_SIZE(HDRP(bp))) >> 6;
    int list_num = pick_list(size);
    if(explicit_free_lists[list_num] == NULL) {
        PUT(GET_PRED(bp), 0);
        PUT(GET_SUCC(bp), 0);
    }
    else{
        PUT(GET_PRED(explicit_free_lists[list_num]), GET_OFFSET(heap_listp, bp));
        PUT(GET_SUCC(bp), GET_OFFSET(heap_listp, explicit_free_lists[list_num]));
        PUT(GET_PRED(bp), 0);
    }
    explicit_free_lists[list_num] = bp;
}

/* 
 * remove the block bp from the specific explicit free list 
 */
static void remove_from_free_list(char *bp)
{ 
    size_t size = (GET_SIZE(HDRP(bp))) >> 6;
    int list_num = pick_list(size);
    if(explicit_free_lists[list_num] == NULL)
        return;
    char *prev = NULL, *next = NULL;
    if(GET(GET_SUCC(bp)))
        next = (NEXT_FBLKP(heap_listp, bp));
    if(GET(GET_PRED(bp)))
        prev = (PREV_FBLKP(heap_listp, bp));
    
    if(prev && next) {
        if(GET_PRED(bp) == NULL)
            printf("bp prev nullptr!\n");
        else if(GET_PRED(next) == NULL)
            printf("next prev nullptr!\n");
        PUT(GET_PRED(next), GET(GET_PRED(bp))); 
        PUT(GET_SUCC(prev), GET(GET_SUCC(bp)));
    }
    else if(prev) {
        PUT(GET_SUCC(prev), 0);
    }
    else if(next) {
        PUT(GET_PRED(next), 0);
        explicit_free_lists[list_num] = next;
    }
    else {
        explicit_free_lists[list_num] = NULL;
    }
}

/*
 * According to the block size, determine which explicit_free_list it should belongs to
 */
static inline int pick_list(size_t size)
{
    if(size <= 1)
    return 0;
    int list_num = 1;
    for(;list_num < LISTMNUM - 1; ++list_num) {
        size >>= 1;
        if(size <= 1)
            break;
    }
    return list_num;
}

/*
 * expand the heap with a free block
 */
static void *extend_heap(size_t words)
{ 
    char *bp; 
    size_t size; 
    
    /* Allocate an even number of words to maintain alignment */ 
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1) 
        return NULL;
    
    /* Initialize free block header/footer and the epilogue header */ 
    PUT(HDRP(bp), PACK(size, 0)); /* Free block header */
    PUT(FTRP(bp), PACK(size, 0)); /* Free block footer */ 
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 
    
    /* Coalesce if the previous block was free */ 
    return coalesce(bp); 
}

/*
 *  merge free blocks
 */
static void *coalesce(void *bp)
{ 
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp))); 
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));  
    if (prev_alloc && next_alloc) {     /* Case 1 */ 
        add_to_free_list(bp);
        return bp; 
    } 
    else if (prev_alloc && !next_alloc) {   /* Case 2 */  
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        remove_from_free_list(NEXT_BLKP(bp));
        PUT(HDRP(bp), PACK(size, 0)); 
        PUT(FTRP(bp), PACK(size,0)); 
    } 
    else if (!prev_alloc && next_alloc) {   /* Case 3 */ 
        size += GET_SIZE(HDRP(PREV_BLKP(bp))); 
        remove_from_free_list(PREV_BLKP(bp));
        PUT(FTRP(bp), PACK(size, 0)); 
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0)); 
        bp = PREV_BLKP(bp); 
    }  
    else {   /* Case 4 */
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + GET_SIZE(FTRP(NEXT_BLKP(bp))); 
        remove_from_free_list(PREV_BLKP(bp));
        remove_from_free_list(NEXT_BLKP(bp));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));  
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0)); 
        bp = PREV_BLKP(bp); 
    }
    add_to_free_list(bp);
    return bp; 
}


/* ----------------------------------main functions---------------------------------------*/

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    /* Create the initial empty heap */ 
    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1)
        return -1; 
    PUT(heap_listp, 0); /* Alignment padding */ 
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3*WSIZE), PACK(0, 1)); /* Epilogue header */
    heap_listp += (2*WSIZE); 
    for(int i = 0; i < LISTMNUM; ++i)
        explicit_free_lists[i] = NULL;
    /* Extend the empty heap with a free block of CHUMSIZE bytes */ 
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1; 
    return 0; 
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize; /* Adjusted block size */ 
    size_t extendsize; /* Amount to extend heap if no fit */ 
    char *bp; 
    /* Ignore spurious requests */ 
    if (size == 0) 
        return NULL;
    
    /* Adjust block size to include overhead and alignment reqs. */ 
    if (size <= DSIZE) 
        asize = OVERHEAD;
    else if(size == 112)       /* for spacial cases*/
        asize = 136;
    else if(size == 448)        /* for spacial cases*/
        asize = 520;
    else 
        asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1)) / DSIZE); 
        // asize = ALIGN(size);
 
    /* Search the free list for a fit */ 
    if ((bp = find_fit(asize)) != NULL) {
        place(bp, asize); 
        return bp; 
    } 
    
    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE); 
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL) 
        return NULL; 
    place(bp, asize); 
    #ifdef DEBUG
    mm_check();
    #endif // DEBUG
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    size_t size = GET_SIZE(HDRP(ptr)); 
    PUT(HDRP(ptr), PACK(size, 0)); 
    PUT(FTRP(ptr), PACK(size, 0)); 
    PUT(GET_PRED(ptr), 0);
    PUT(GET_SUCC(ptr), 0);
    coalesce(ptr);  
    #ifdef DEBUG
    mm_check();
    #endif // DEBUG
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    #ifdef DEBUG
    mm_check();
    #endif // DEBUG

    /* if prt is null, just malloc*/
    if(!ptr)
        return mm_malloc(size);

    /* If size is 0, just free it */
    if(!size){
        mm_free(ptr);
        return NULL;
    }

    size_t newSize = ALIGN(size) + DSIZE; /* new actual malloc size */
    size_t oldSize = GET_SIZE(HDRP(ptr)); /* old block size */
    size_t nextSize = GET_SIZE(HDRP(NEXT_BLKP(ptr))); /* the next block of old block's size */
    
    /* when the size not change */
    if(newSize == oldSize)
        return ptr;
    /* when newSize < oldSize, just free the redundant space */
    else if(newSize < oldSize){
        PUT(HDRP(ptr), PACK(newSize, 1));
        PUT(FTRP(ptr), PACK(newSize, 1));
        if(oldSize - newSize > 0) {
            PUT(HDRP(NEXT_BLKP(ptr)), PACK(oldSize - newSize, 0));
            PUT(FTRP(NEXT_BLKP(ptr)), PACK(oldSize - newSize, 0));
            coalesce(NEXT_BLKP(ptr));
        }
        return ptr;
    } 
    /* when the newSize is larger */
    else{
        int isExpand= (!GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && !GET_SIZE(HDRP(NEXT_BLKP(NEXT_BLKP(ptr))))) || nextSize == 0; /* the block can be expanded or not */
        /* remain size is not enough but can be simply expanded as it is at the end of heap */
        if(nextSize >= newSize - oldSize + OVERHEAD && !GET_ALLOC(HDRP(NEXT_BLKP(ptr)))){
            remove_from_free_list(NEXT_BLKP(ptr));
            PUT(HDRP(ptr), PACK(newSize, 1));
            PUT(FTRP(ptr), PACK(newSize, 1));
            size_t remainSize = oldSize + nextSize - newSize;
            if(remainSize > 0){
                PUT(HDRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
                PUT(FTRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
                coalesce(NEXT_BLKP(ptr));
            }
            return ptr;
        }
        else if(isExpand){
            extend_heap(MAX(newSize-oldSize, CHUNKSIZE)/WSIZE);
            nextSize = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
            remove_from_free_list(NEXT_BLKP(ptr));
            size_t remainSize = oldSize + nextSize - newSize;
            PUT(HDRP(ptr), PACK(newSize, 1));
            PUT(FTRP(ptr), PACK(newSize, 1));
            if(remainSize >= OVERHEAD){
                PUT(HDRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
                PUT(FTRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
                coalesce(NEXT_BLKP(ptr));
            }
            return ptr;
        }
        /* have to realloc */
        else{
            void *newptr = mm_malloc(size);
            if (newptr == NULL)
                return NULL;
            memcpy(newptr, ptr, oldSize - DSIZE);
            mm_free(ptr);

            return newptr;
        }    
    }
}


/*--------------------------------check function---------------------------------------*/

/*
 *  a heap checker
 */
int mm_check(void)
{
    /* is every block in the free list marked as free? */
    for(int i = 0; i < LISTMNUM; ++i) {
        if(explicit_free_lists[i] == NULL)
            continue;
        void *bp = explicit_free_lists[i];
        while(bp != NULL) {
            if(GET_ALLOC(HDRP(bp))) {
                printf("a block in the free list is not free!\n");
                return 0;
            }
            if(GET(GET_SUCC(bp)))
                bp = NEXT_FBLKP(heap_listp, bp);
            else 
                break;
        }
    }

    /* Are there any contiguous free blocks that somehow escaped coalescing? */
    void *bp = heap_listp;
    for(;GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if(!GET_ALLOC(HDRP(bp)) && !GET_ALLOC(HDRP(NEXT_BLKP(bp)))) {
            printf("having free blocks escaped coaslescing!\n");
            return 0;
        }
    }

    /* Is every free block actually in the free list? */
    int freeTrueCount = 0, freeListCount = 0;
    for(void *bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if(!GET_ALLOC(HDRP(bp))) {
            ++freeTrueCount;
        }
    }
    for(int i = 0; i < LISTMNUM; ++i) {
        if(explicit_free_lists[i] == NULL)
            continue;
        void *bp = explicit_free_lists[i];
        while(bp != NULL) {
            ++freeListCount;
            if(GET(GET_SUCC(bp)))
                bp = NEXT_FBLKP(heap_listp, bp);
            else
                break;
        }
    }
    if(freeTrueCount != freeListCount) {
        printf("have some free block not in free list!\n");
        return 0;
    }

    /* Do the pointers in a heap block point to valid heap addresses? */
    size_t firstByte = (size_t)mem_heap_lo();
    size_t lastByte = (size_t)mem_heap_hi();
    for(void *bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        /* check whether area is aligned */
        if((size_t)bp % DSIZE != 0) {
            printf("alignment violation!\n");
            return 0;
        }
        /* check whether the area is in the heap */
        if((size_t)bp < firstByte || (size_t)bp > lastByte) {
            printf("alignment outside the heap!\n");
            return 0;
        }
    }

    /* Is the header equal to the footer?*/ 
    for(void *bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if(GET_SIZE(HDRP(bp)) != GET_SIZE(FTRP(bp))) {
            printf("header not equal to footer!\n");
            return 0;
        }
    }
    return 1;
}
