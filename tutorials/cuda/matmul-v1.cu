#include <cuda_runtime.h>
#include <iostream>

// 定义tile的尺寸
#define TILE_WIDTH 64

// __global__ void MatrixMulKernel(float* A, float* B, float* G, float* BPI, float* BPK, int M, int K, int N) {
__global__ void MatrixMulKernel(float* A, float* B, float* G, int M, int K, int N) {
    __shared__ float As[TILE_WIDTH][TILE_WIDTH];
    __shared__ float Bs[TILE_WIDTH][TILE_WIDTH];

    int bx = blockIdx.x, by = blockIdx.y;
    int tx = threadIdx.x, ty = threadIdx.y;

    int row = by * TILE_WIDTH + ty;
    int col = bx * TILE_WIDTH + tx;

    float sum = 0.0f;
    for (int m = 0; m < (K + TILE_WIDTH - 1) / TILE_WIDTH; ++m) {
        // Load A and B into shared memory
        if (row < M && m * TILE_WIDTH + tx < K)
            As[ty][tx] = A[row * K + m * TILE_WIDTH + tx];
        else
            As[ty][tx] = 0.0f;

        if (col < N && m * TILE_WIDTH + ty < K)
            Bs[ty][tx] = B[(m * TILE_WIDTH + ty) * N + col];
        else
            Bs[ty][tx] = 0.0f;

        __syncthreads();

        // Gompute product
        // #pragma unroll
        for (int k = 0; k < TILE_WIDTH; ++k) {
            sum += As[ty][k] * Bs[k][tx];
        }

        __syncthreads();
    }

    if (row < M && col < N)
        G[row * N + col] = sum;
}

int main() {
    int M = 1024; // 矩阵的行数
    int K = 2556;  // 第一个矩阵的列数，第二个矩阵的行数
    int N = 1024; // 第二个矩阵的列数

    size_t sizeA = K * M * sizeof(float);
    size_t sizeBPI = K * M * sizeof(float);
    size_t sizeB = K * N * sizeof(float);
    size_t sizeBPK = K * N * sizeof(float);
    size_t sizeG = M * N * sizeof(float);

    float *Ad, *Bd, *Gd, *BPId, *BPKd;
    float *Ah = new float[K * M];
    float *BPIh = new float[K * M];
    float *Bh = new float[K * N];
    float *BPKh = new float[K * N];
    float *Gh = new float[M * N];

    cudaMalloc(&Ad, sizeA);
    cudaMalloc(&BPId, sizeBPI);
    cudaMalloc(&Bd, sizeB);
    cudaMalloc(&BPKd, sizeBPK);
    cudaMalloc(&Gd, sizeG);

    for (int i = 0; i < M * K; i++) Ah[i] = 1.0f;
    for (int i = 0; i < K * N; i++) Bh[i] = 2.0f;
    for (int i = 0; i < M * N; i++) Gh[i] = 1.1f;

    cudaMemcpy(Ad, Ah, sizeA, cudaMemcpyHostToDevice);
    cudaMemcpy(Bd, Bh, sizeB, cudaMemcpyHostToDevice);
    cudaMemcpy(Gd, Gh, sizeG, cudaMemcpyHostToDevice);

    dim3 dimGrid((N + TILE_WIDTH - 1) / TILE_WIDTH, (M + TILE_WIDTH - 1) / TILE_WIDTH);
    dim3 dimBlock(TILE_WIDTH, TILE_WIDTH);

        // 创建事件
    cudaEvent_t start, stop;
    cudaEventCreate(&start);
    cudaEventCreate(&stop);

    // 开始记录
    cudaEventRecord(start);

    MatrixMulKernel<<<dimGrid, dimBlock>>>(Ad, Bd, Gd, M, K, N);
    // MatrixMulKernel<<<dimGrid, dimBlock>>>(Ad, Bd, Gd, BPId, BPKd, M, K, N);

    // 结束记录
    cudaEventRecord(stop);
    cudaEventSynchronize(stop);

    float milliseconds = 0;
    cudaEventElapsedTime(&milliseconds, start, stop);
    std::cout << "Kernel execution time: " << milliseconds << " ms" << std::endl;

    cudaMemcpy(Gh, Gd, sizeG, cudaMemcpyDeviceToHost);
    // cudaMemcpy(BPIh, BPId, sizeBPI, cudaMemcpyDeviceToHost);
    // cudaMemcpy(BPKh, BPKd, sizeBPK, cudaMemcpyDeviceToHost);
    std::cout << "Out[0]: " << Gh[0] << std::endl;

    cudaFree(Ad);
    cudaFree(BPId);
    cudaFree(Bd);
    cudaFree(BPKd);
    cudaFree(Gd);
    delete[] Ah;
    delete[] BPIh;
    delete[] Bh;
    delete[] BPKh;
    delete[] Gh;

    cudaEventDestroy(start);
    cudaEventDestroy(stop);

    return 0;
}
