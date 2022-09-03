// if(ptr == NULL)
    //     return mm_malloc(size);
    // if(size == 0) {
    //     mm_free(ptr);
    //     return NULL;
    // }

    // size_t oldSize = GET_SIZE(HDRP(ptr));
    // size_t newSize = ALIGN(size) + DSIZE;
    // if(oldSize == newSize)
    //     return ptr;
    // else if(newSize < oldSize) {
    //     size_t remainSize = oldSize - newSize;
    //     PUT(HDRP(ptr), PACK(newSize, 1));
    //     PUT(FTRP(ptr), PACK(newSize, 1));
    //     void *next = NEXT_BLKP(ptr);
    //     PUT(HDRP(next), PACK(remainSize, 0));
    //     PUT(FTRP(next), PACK(remainSize, 0));
    //     coalesce(next);
    //     return ptr;
    // }
    // else {
    //     // char *nextBlock = NEXT_BLKP(ptr);
    //     size_t nextSize = 0;
    //     // size_t remainSize = newSize - oldSize;
    //     // if((remainSize + OVERHEAD <= nextSize) && !GET_ALLOC(HDRP(NEXT_BLKP(ptr)))) {
    //     //     remove_from_free_list(NEXT_BLKP(ptr));
    //     //     remainSize = oldSize + nextSize - newSize;
    //     //     printf("remainSize: %ld %ld %ld \n", remainSize, nextSize, newSize - oldSize);
    //     //     PUT(HDRP(ptr), PACK(newSize, 1));
    //     //     PUT(FTRP(ptr), PACK(newSize, 1));
    //     //     if(remainSize > OVERHEAD){
    //     //         // void *next = NEXT_BLKP(ptr);
    //     //         PUT(HDRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //     //         PUT(FTRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //     //         add_to_free_list(NEXT_BLKP(ptr));
    //     //     }
    //     //     return ptr;
    //     // }
    //     // else if((!GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && nextSize == 0) || !GET_SIZE(HDRP(NEXT_BLKP(ptr)))) /* the block can be expanded or not */
    //     // {
    //     //     void *before = extend_heap(MAX(newSize - oldSize, CHUNKSIZE) / WSIZE);
    //     //     nextSize = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    //     //     remainSize = oldSize + nextSize - newSize;
    //     //     printf("remainSize3 : %ld %ld %ld \n", remainSize, nextSize, newSize - oldSize);
    //     //     PUT(HDRP(ptr), PACK(newSize, 1));
    //     //     PUT(FTRP(ptr), PACK(newSize, 1));
    //     //     if(remainSize > OVERHEAD){
    //     //         // void *next = NEXT_BLKP(ptr);
    //     //         PUT(HDRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //     //         PUT(FTRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //     //         coalesce(NEXT_BLKP(ptr));
    //     //     }
    //     //     return ptr;
    //     // }
    //     int enough_size = newSize >= newSize - oldSize + OVERHEAD; /* remain size is enough or not */
    //     int can_expand = (!GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && !GET_SIZE(HDRP(NEXT_BLKP(NEXT_BLKP(ptr))))) || !GET_SIZE(HDRP(NEXT_BLKP(ptr))); /* the block can be expanded or not */

    //     /* subCase: remain size is not enough but can be simply expanded as it is at the end of heap */
    //     if(!enough_size && can_expand){
    //         extend_heap(MAX(newSize-oldSize, CHUNKSIZE)/WSIZE);
    //         nextSize = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    //     }
    //     /* subCase: remain size is enough */
    //     if(enough_size || can_expand){
    //         remove_from_free_list(NEXT_BLKP(ptr));
    //         PUT(HDRP(ptr), PACK(newSize, 1));
    //         PUT(FTRP(ptr), PACK(newSize, 1));
    //         if(nextSize != newSize - oldSize){
    //             PUT(HDRP(NEXT_BLKP(ptr)), PACK(oldSize + nextSize- newSize, 0));
    //             PUT(FTRP(NEXT_BLKP(ptr)), PACK(oldSize + nextSize - newSize, 0));
    //             add_to_free_list(NEXT_BLKP(ptr));
    //         }
    //         return ptr;
    //     }
    //     else {
    //         void *newptr = mm_malloc(size);
    //         if(newptr == NULL)
    //             return NULL;
    //         memcpy(newptr, ptr, oldSize - WSIZE);
    //         mm_free(ptr);
    //         return newptr;
    //     }
    // }
    //     if(!GET_ALLOC(HDRP(NEXT_BLKP(ptr))))
    //         printf("nextSize: %ld\n", nextSize);
    //     int isExpend = 0;
    //     int isEnough = ((remainSize <= nextSize) && !GET_ALLOC(HDRP(NEXT_BLKP(ptr))));
    //     int nextEmpty = (nextSize == 0);
    //     int nextnextEmpty = (remainSize >= nextSize) && !GET_ALLOC(HDRP(NEXT_BLKP(ptr))) && !GET_SIZE(HDRP(NEXT_BLKP(nextBlock))) ;
    //     //  printf("get here 699!\n");
    //     if(!isEnough && (nextEmpty || nextnextEmpty)) {
    //         printf("remainSize: %ld %ld \n", remainSize, nextSize);
    //         remainSize -= nextSize;
    //         void *before = extend_heap(MAX(remainSize, CHUNKSIZE) / WSIZE);
    //         nextSize = GET_SIZE(HDRP(NEXT_BLKP(ptr)));
    //         printf("remainSize: %ld %ld \n", remainSize, nextSize);
    //         isExpend = 1;
    //     }
    //     if(isExpend || isEnough) {
    //         remove_from_free_list(NEXT_BLKP(ptr));
    //         remainSize = oldSize + nextSize - newSize;
    //         printf("remainSize: %ld %ld %ld \n", remainSize, nextSize, newSize - oldSize);
    //         PUT(HDRP(ptr), PACK(newSize, 1));
    //         PUT(FTRP(ptr), PACK(newSize, 1));
    //         if(remainSize > newSize - oldSize){
    //             // void *next = NEXT_BLKP(ptr);
    //             PUT(HDRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //             PUT(FTRP(NEXT_BLKP(ptr)), PACK(remainSize, 0));
    //             coalesce(NEXT_BLKP(ptr));
    //         }
    //         return ptr;
    //     }
    //     else {
    //         void *newptr = mm_malloc(size);
    //         if(newptr == NULL)
    //             return NULL;
    //         memcpy(newptr, ptr, oldSize - WSIZE);
    //         mm_free(ptr);
    //         return newptr;
    //     }
    // }
    // return ptr;