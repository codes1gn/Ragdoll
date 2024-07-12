# 定义编译器
CC=nvcc

# 默认目标（make 命令不带参数时执行的规则）
all: add add1 add2

# 清理编译生成的文件
clean:
	rm -f *.cubin

# 声明伪目标
.PHONY: all clean nsys


# sub targets

# basic vec-add
add: add.cu
	$(CC) -o add.cubin add.cu

# threaded vec-add
add1: add1.cu
	$(CC) -o add1.cubin add1.cu

# distributed to grids and threads
add2: add2.cu
	$(CC) -o add2.cubin add2.cu
	
# add H2D async
add3: add3.cu
	$(CC) -o add3.cubin add3.cu

nsys: add3
	__PREFETCH=off nsys profile -o noprefetch --stats=true ./add3.cubin > nsys.log
	__PREFETCH=on nsys profile -o prefetch --stats=true ./add3.cubin >> nsys.log
