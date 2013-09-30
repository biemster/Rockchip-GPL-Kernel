#!/bin/bash
#Copy config
cp arch/arm/configs/rk3188_mk908_working_defconfig .config
#make quad core
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf- -j4
#make recovery!
./mkbootimg --kernel arch/arm/boot/Image --ramdisk ./initramfs.cpio --pagesize 16384 --ramdiskaddr 62000000 -o  recovery.img

