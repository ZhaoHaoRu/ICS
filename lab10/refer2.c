void *mm_realloc(void *ptr, size_t size) {
    //mm_check();
    if (ptr == NULL) {
        return mm_malloc(size);
    }
    if (size == 0) {
        mm_free(ptr);
        return NULL;
    }

    char *oldptr = ptr;
    char *newptr;
    int need_size = ALIGN(size) + 8;
    int old_size = GET_SIZE(HDRP(oldptr));
    if (need_size <= old_size)
        return oldptr;

    char *next_blkp = NEXT_BLKP(oldptr);
    int next_size = GET_SIZE(HDRP(next_blkp));

    if (next_size + old_size >= need_size && GET_ALLOC(HDRP(next_blkp)) == 0) {
        delete_block(next_blkp);
        PUT(HDRP(oldptr), PACK(need_size, 1));
        PUT(FTRP(oldptr), PACK(need_size, 1));

        PUT(HDRP(NEXT_BLKP(oldptr)), PACK(next_size + old_size - need_size, 0));
        PUT(FTRP(NEXT_BLKP(oldptr)), PACK(next_size + old_size - need_size, 0));
        add_block(NEXT_BLKP(oldptr));

        newptr = oldptr;
        return newptr;
    }

    char *prev_blkp = PREV_BLKP(oldptr);
    int pre_size = GET_SIZE(HDRP(prev_blkp));

    if (pre_size + old_size >= need_size + 16 && GET_ALLOC(HDRP(prev_blkp)) == 0) {
        delete_block(prev_blkp);
        PUT(HDRP(prev_blkp), PACK(pre_size + old_size, 1));
        memcpy(prev_blkp, oldptr, old_size - 8);
        PUT(FTRP(prev_blkp), PACK(pre_size + old_size, 1));
        
        newptr = prev_blkp;
        return newptr;
    }

    else {
        size_t copySize;
        newptr = mm_malloc(size);
        if (newptr == NULL)
            return NULL;
        copySize = (size_t)(GET_SIZE(HDRP(oldptr)) - DSIZE);
        if (copySize > size)
            copySize = size;
        memcpy(newptr, oldptr, copySize);
        mm_free(oldptr);
        return newptr;
    }
}