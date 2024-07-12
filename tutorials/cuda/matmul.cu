#include <cuda_runtime.h>
#include <iostream>

// 定义tile的尺寸
#define TILE_WIDTH 32

__global__ void MatrixMulKernel(float* Md, float* Nd, float* Pd, int M, int K, int N) {
    __shared__ float Mds[TILE_WIDTH][TILE_WIDTH];
    __shared__ float Nds[TILE_WIDTH][TILE_WIDTH];

    int bx = blockIdx.x; int by = blockIdx.y;
    int tx = threadIdx.x; int ty = threadIdx.y;

    // 计算行列
    int Row = by * TILE_WIDTH + ty;
    int Col = bx * TILE_WIDTH + tx;

    float Pvalue = 0;
    // 循环遍历tile
    for (int m = 0; m < (K + TILE_WIDTH - 1) / TILE_WIDTH; ++m) {
        // 载入数据到 shared memory
        if (Row < M && (m * TILE_WIDTH + tx) < K)
            Mds[ty][tx] = Md[Row * K + (m * TILE_WIDTH + tx)];
        else
            Mds[ty][tx] = 0.0;

        if (Col < N && (m * TILE_WIDTH + ty) < K)
            Nds[ty][tx] = Nd[(m * TILE_WIDTH + ty) * N + Col];
        else
            Nds[ty][tx] = 0.0;

        __syncthreads();

        // 计算 Pvalue
        for (int k = 0; k < TILE_WIDTH; ++k) {
            Pvalue += Mds[ty][k] * Nds[k][tx];
        }
        __syncthreads();
    }

    if (Row < M && Col < N)
        Pd[Row * N + Col] = Pvalue;
}

int main() {
    int M = 1024; // 矩阵的行数
    int K = 2556;  // 第一个矩阵的列数，第二个矩阵的行数
    int N = 1024; // 第二个矩阵的列数

    size_t sizeM = M * K * sizeof(float);
    size_t sizeN = K * N * sizeof(float);
    size_t sizeP = M * N * sizeof(float);

    float *Md, *Nd, *Pd;
    float *M_h = new float[M * K];
    float *N_h = new float[K * N];
    float *P_h = new float[M * N];

    cudaMalloc(&Md, sizeM);
    cudaMalloc(&Nd, sizeN);
    cudaMalloc(&Pd, sizeP);

    for (int i = 0; i < M * K; i++) M_h[i] = 1.0f;
    for (int i = 0; i < K * N; i++) N_h[i] = 2.0f;

    cudaMemcpy(Md, M_h, sizeM, cudaMemcpyHostToDevice);
    cudaMemcpy(Nd, N_h, sizeN, cudaMemcpyHostToDevice);

    dim3 dimGrid((N + TILE_WIDTH - 1) / TILE_WIDTH, (M + TILE_WIDTH - 1) / TILE_WIDTH);
    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);

        // 创建事件
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    // 开始记录
    cudaEventRecord(start);

    MatrixMulKernel<<<dimGrid, dimBlock>>>(Md, Nd, Pd, M, K, N);

    // 结束记录
    cudaEventRecord(stop);
    cudaEventSynchronize(stop);

    float milliseconds = 0;
    cudaEventElapsedTime(&milliseconds, start, stop);
    std::cout << "Kernel execution time: " << milliseconds << " ms" << std::endl;

    cudaMemcpy(P_h, Pd, sizeP, cudaMemcpyDeviceToHost);

    cudaFree(Md);
    cudaFree(Nd);
    cudaFree(Pd);
    delete[] M_h;
    delete[] N_h;
    delete[] P_h;

    cudaEventDestroy(start);
    cudaEventDestroy(stop);

    return 0;
}
