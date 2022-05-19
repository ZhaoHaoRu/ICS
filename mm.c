/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)
#define OVERHEAD 16

#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE 4 /* Word and header/footer size (bytes) */ 
#define DSIZE 8 /* Double word size (bytes) */ 
#define CHUNKSIZE 4096 /* Extend heap by this amount (bytes) */  
#define MAX(x, y) ((x) > (y)? (x) : (y)) 

/* Pack a size and allocated bit into a word */ 
#define PACK(size, alloc) ((size) | (alloc)) 

/* Read and write a word at address p */ 
#define GET(p) (* (unsigned int *)(p)) 
#define PUT(p, val) (*(unsigned int *)(p) = (val))

#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1) 


#define GET_ADDR(list, offset) (list + offset)
#define GET_OFFSET(list, p)((char *)p - (char *)list)

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
static char* explicit_free_list = NULL;    // explicit free list
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *find_fit(size_t asize);
static void add_to_free_list(char *bp);
static void remove_from_free_list(char *bp);
static void place(void *bp, size_t asize);

// static int mm_check(char *function);    //有了显式的free list之后再来补
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
    explicit_free_list = NULL;
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
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    if(ptr == NULL)
        return mm_malloc(size);
    if(size == 0){
        mm_free(ptr);
        return NULL;
    }
    
    size_t oldSize = GET_SIZE(HDRP(ptr));
    if(oldSize == size)
        return ptr;
    void *newptr = mm_malloc(size);
    if(newptr == NULL)
        return NULL;
    size_t newSize = GET_SIZE(HDRP(newptr));
    if(oldSize < newSize)
        newSize = size;
    memcpy(newptr, ptr, newSize - WSIZE);
    mm_free(ptr);
    return newptr;

}

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


static void *find_fit(size_t asize) 
{ 
    /* First-fit search */ 
    void *bp = explicit_free_list;
    // for (bp = next_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) { 
    //     if (!GET_ALLOC(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))) { 
    //         return bp;
    //     } 
    // } 
    // for(bp = heap_listp; bp != next_listp; bp = NEXT_BLKP(bp)) {
    //     if (!GET_ALLOC(HDRP(bp)) && (asize <= GET_SIZE(HDRP(bp)))) { 
    //         return bp;
    //     } 
    // }
    if(bp == NULL || asize == 0)
        return NULL;
    while(bp != NULL) {
        if(asize <= GET_SIZE(HDRP(bp)))
            return bp;
        // bp = (char *)GET(GET_SUCC(bp));
        if(GET(GET_SUCC(bp)))
            bp = NEXT_FBLKP(heap_listp, bp);
        else
            break;
    }
    return NULL; /* No fit */ 
}


static void place(void *bp, size_t asize) 
{ 
    size_t csize = GET_SIZE(HDRP(bp)); 
    if ((csize - asize) >= (2 * DSIZE)) { 
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


static void add_to_free_list(char *bp) 
{
    // char *next = (char *)GET(bp);
    // char *next = GET(bp);
    // PUT(GET_SUCC(bp), next);
    // if(next != NULL) {
    //     PUT(GET_PRED(next), bp);
    // }
    // PUT(explicit_free_list, bp);
    if(explicit_free_list == NULL) {
        PUT(GET_PRED(bp), 0);
        PUT(GET_SUCC(bp), 0);
    }
    else{
        PUT(GET_PRED(explicit_free_list), GET_OFFSET(heap_listp, bp));
        PUT(GET_SUCC(bp), GET_OFFSET(heap_listp, explicit_free_list));
        PUT(GET_PRED(bp), 0);
    }
    explicit_free_list = bp;
}

/* 
 * remove_from_free_list - remove the block bp from explicit free list
 */
static void remove_from_free_list(char *bp)
{
    // char *prev = GET(GET_PRED(bp));
    // char *next = GET(GET_SUCC(bp));


    // if(prev != NULL) {
    //     if(next != NULL)
    //         PUT(GET_PRED(next), prev);
    //     PUT(GET_SUCC(prev), next);
    // }
    // else {
    //     if(next != NULL)
    //         PUT(GET_PRED(next), 0);
    //     PUT(explicit_free_list, next);
    // }
    // PUT(GET_SUCC(bp), 0);
    // PUT(GET_PRED(bp), 0);
    // return;
    if(explicit_free_list == NULL)
        return;
    char *prev = NULL, *next = NULL;
    if(GET(GET_SUCC(bp)))
        next = (NEXT_FBLKP(heap_listp, bp));
    if(GET(GET_PRED(bp)))
        prev = (PREV_FBLKP(heap_listp, bp));
    
    if(prev && next) {
        PUT(GET_PRED(next), GET(GET_PRED(bp))); 
        PUT(GET_SUCC(prev), GET(GET_SUCC(bp)));
    }
    else if(prev) {
        PUT(GET_SUCC(prev), 0);
    }
    else if(next) {
        PUT(GET_PRED(next), 0);
        explicit_free_list = next;
    }
    else {
        explicit_free_list = NULL;
    }
}

