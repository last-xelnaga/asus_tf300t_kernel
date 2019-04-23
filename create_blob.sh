#!/bin/bash

rm ramdisk.lz
cd ramdisk
find . ! -name . | cpio -o -H newc | xz -6 --format=lzma > ../ramdisk.lz
cd ..

rm boot.img
./tools/mkbootimg/mkbootimg --kernel source/arch/arm/boot/zImage --ramdisk ramdisk.lz -o boot.img

rm boot.blob
./tools/tegra3_kernel_blob_creator/kernel_blob_creator -i boot.img -o boot.blob

# create package for recovery
rm package/boot.blob
rm package/package.zip

cp boot.blob package/boot.blob
cd package
zip -r package.zip *
