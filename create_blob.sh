#!/bin/bash

rm ramdisk.gz
cd ramdisk
find . ! -name . | cpio -o -H newc | xz -6 --format=lzma > ../ramdisk.gz
cd ..

rm boot.img
./tools/android-unpackbootimg/mkbootimg --kernel source/arch/arm/boot/zImage --ramdisk ramdisk.gz -o boot.img

rm boot.blob
./tools/tegra3_kernel_blob_creator/kernel_blob_creator -i boot.img -o boot.blob

# create package for recovery
rm package/boot.blob
rm package/package.zip

cp boot.blob package/boot.blob
cd package
zip -r package.zip *
