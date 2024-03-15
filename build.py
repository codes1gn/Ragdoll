import subprocess
import sys

def main():
    # 创建构建目录
    # TODO, refine build entry, allow consistent behaviour between poetry/make
    subprocess.check_call(['make', 'build'], shell=True)

if __name__ == "__main__":
    main()
