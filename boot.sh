#!/bin/bash

#编译为二进制文件
nasm boot.asm -o boot.bin

#生成镜像文件
dd if=boot.bin of=./boot.img bs=512 count=1


