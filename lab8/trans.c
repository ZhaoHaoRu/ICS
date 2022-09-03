/*
*赵浩如
*520021910352 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if(M == 32 && N == 32){
        int i = 0, kk = 0, jj = 0, tmp1 = 0, tmp2 = 0, tmp3 = 0, tmp4 = 0, tmp5 = 0, tmp6 = 0, tmp7 = 0, tmp8 = 0;
        int blockSize = 8;
        for(kk = 0; kk < M; kk += blockSize){
            for(jj = 0; jj < M; jj += blockSize){
                for(i = kk; i < kk + blockSize; ++i){
                    tmp1 = A[i][jj];
                    tmp2 = A[i][jj + 1];
                    tmp3 = A[i][jj + 2];
                    tmp4 = A[i][jj + 3];
                    tmp5 = A[i][jj + 4];
                    tmp6 = A[i][jj + 5];
                    tmp7 = A[i][jj + 6];
                    tmp8 = A[i][jj + 7];
                    B[jj][i] = tmp1;
                    B[jj + 1][i] = tmp2;
                    B[jj + 2][i] = tmp3;
                    B[jj + 3][i] = tmp4;
                    B[jj + 4][i] = tmp5;
                    B[jj + 5][i] = tmp6;
                    B[jj + 6][i] = tmp7;
                    B[jj + 7][i] = tmp8;
                }
            }
        }
    }
    else if(M == 64 && N == 64){
        int i = 0, kk = 0, jj = 0, tmp1 = 0, tmp2 = 0, tmp3 = 0, tmp4 = 0, tmp5 = 0, tmp6 = 0, tmp7 = 0, tmp8 = 0;
        int blockSize = 8;
        for(kk = 0; kk < M; kk += blockSize){
            for(jj = 0; jj < M; jj += blockSize){
                for(i = kk; i < kk + 4; ++i){
                    tmp1 = A[i][jj];
                    tmp2 = A[i][jj + 1];
                    tmp3 = A[i][jj + 2];
                    tmp4 = A[i][jj + 3];
                    tmp5 = A[i][jj + 4];
                    tmp6 = A[i][jj + 5];
                    tmp7 = A[i][jj + 6];
                    tmp8 = A[i][jj + 7];
                    B[jj][i] = tmp1;
                    B[jj + 1][i] = tmp2;
                    B[jj + 2][i] = tmp3;
                    B[jj + 3][i] = tmp4;
                    B[jj][i + 4] = tmp5;
                    B[jj + 1][i + 4] = tmp6;
                    B[jj + 2][i + 4] = tmp7;
                    B[jj + 3][i + 4] = tmp8;
                }
                for(i = jj; i < jj + 4; ++i){
                    //此处B求的位置应该是已经转置过的,所以x,y本身就要倒过来了
                    tmp1 = B[i][kk + 4];
                    tmp2 = B[i][kk + 5];
                    tmp3 = B[i][kk + 6];
                    tmp4 = B[i][kk + 7];
                    tmp5 = A[kk + 4][i];
                    tmp6 = A[kk + 5][i];
                    tmp7 = A[kk + 6][i];
                    tmp8 = A[kk + 7][i];
                    B[i][kk + 4] = tmp5;
                    B[i][kk + 5] = tmp6;
                    B[i][kk + 6] = tmp7;
                    B[i][kk + 7] = tmp8;
                    B[i + 4][kk] = tmp1;
                    B[i + 4][kk + 1] = tmp2;
                    B[i + 4][kk + 2] = tmp3;
                    B[i + 4][kk + 3] = tmp4;
                }
                for(i = kk + 4; i < kk + blockSize; ++i){
                    tmp1 = A[i][jj + 4];
                    tmp2 = A[i][jj + 5];
                    tmp3 = A[i][jj + 6];
                    tmp4 = A[i][jj + 7];
                    B[jj + 4][i] = tmp1;
                    B[jj + 5][i] = tmp2;
                    B[jj + 6][i] = tmp3;
                    B[jj + 7][i] = tmp4;
                }
            }
        }
    }  
    else if(M == 61 && N == 67){
        int i = 0, kk = 0, jj = 0, tmp1 = 0, tmp2 = 0, tmp3 = 0, tmp4 = 0, tmp5 = 0, tmp6 = 0, tmp7 = 0, tmp8 = 0;
        int blockSize = 16;
        for(kk = 0; kk < 64; kk += blockSize){
            for(jj = 0; jj < 48; jj += blockSize){
                for(i = kk; i < kk + blockSize; ++i){
                    tmp1 = A[i][jj];
                    tmp2 = A[i][jj + 1];
                    tmp3 = A[i][jj + 2];
                    tmp4 = A[i][jj + 3];
                    tmp5 = A[i][jj + 4];
                    tmp6 = A[i][jj + 5];
                    tmp7 = A[i][jj + 6];
                    tmp8 = A[i][jj + 7];
                    B[jj][i] = tmp1;
                    B[jj + 1][i] = tmp2;
                    B[jj + 2][i] = tmp3;
                    B[jj + 3][i] = tmp4;
                    B[jj + 4][i] = tmp5;
                    B[jj + 5][i] = tmp6;
                    B[jj + 6][i] = tmp7;
                    B[jj + 7][i] = tmp8;
                    tmp1 = A[i][jj + 8];
                    tmp2 = A[i][jj + 9];
                    tmp3 = A[i][jj + 10];
                    tmp4 = A[i][jj + 11];
                    tmp5 = A[i][jj + 12];
                    tmp6 = A[i][jj + 13];
                    tmp7 = A[i][jj + 14];
                    tmp8 = A[i][jj + 15];
                    B[jj + 8][i] = tmp1;
                    B[jj + 9][i] = tmp2;
                    B[jj + 10][i] = tmp3;
                    B[jj + 11][i] = tmp4;
                    B[jj + 12][i] = tmp5;
                    B[jj + 13][i] = tmp6;
                    B[jj + 14][i] = tmp7;
                    B[jj + 15][i] = tmp8;
                }
            }
        }
        for(i = 0; i < 64; ++i){
            jj = 48;
            tmp1 = A[i][jj];
            tmp2 = A[i][jj + 1];
            tmp3 = A[i][jj + 2];
            tmp4 = A[i][jj + 3];
            tmp5 = A[i][jj + 4];
            tmp6 = A[i][jj + 5];
            tmp7 = A[i][jj + 6];
            tmp8 = A[i][jj + 7];
            B[jj][i] = tmp1;
            B[jj + 1][i] = tmp2;
            B[jj + 2][i] = tmp3;
            B[jj + 3][i] = tmp4;
            B[jj + 4][i] = tmp5;
            B[jj + 5][i] = tmp6;
            B[jj + 6][i] = tmp7;
            B[jj + 7][i] = tmp8;
            tmp1 = A[i][jj + 8];
            tmp2 = A[i][jj + 9];
            tmp3 = A[i][jj + 10];
            tmp4 = A[i][jj + 11];
            tmp5 = A[i][jj + 12];
            B[jj + 8][i] = tmp1;
            B[jj + 9][i] = tmp2;
            B[jj + 10][i] = tmp3;
            B[jj + 11][i] = tmp4;
            B[jj + 12][i] = tmp5;
        }
        for(kk = 64;kk < N; ++kk){
            for(jj = 0; jj < 56; jj += 8){
                tmp1 = A[kk][jj];
                tmp2 = A[kk][jj + 1];
                tmp3 = A[kk][jj + 2];
                tmp4 = A[kk][jj + 3];
                tmp5 = A[kk][jj + 4];
                tmp6 = A[kk][jj + 5];
                tmp7 = A[kk][jj + 6];
                tmp8 = A[kk][jj + 7];
                B[jj][kk] = tmp1;
                B[jj + 1][kk] = tmp2;
                B[jj + 2][kk] = tmp3;
                B[jj + 3][kk] = tmp4;
                B[jj + 4][kk] = tmp5;
                B[jj + 5][kk] = tmp6;
                B[jj + 6][kk] = tmp7;
                B[jj + 7][kk] = tmp8;
            }
            tmp1 = A[kk][jj];
            tmp2 = A[kk][jj + 1];
            tmp3 = A[kk][jj + 2];
            tmp4 = A[kk][jj + 3];
            tmp5 = A[kk][jj + 4];
            B[jj][kk] = tmp1;
            B[jj + 1][kk] = tmp2;
            B[jj + 2][kk] = tmp3;
            B[jj + 3][kk] = tmp4;
            B[jj + 4][kk] = tmp5;
        }
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    

}

/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc); 

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

