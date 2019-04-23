#!/bin/bash

rm ramdisk.gz
cd ramdisk
find . ! -name . | cpio -o -H newc | xz -6 --format=lzma > ../ramdisk.gz
cd ..

rm boot.img
./tools/android-unpackbootimg/mkbootimg --kernel source/arch/arm/boot/zImage --ramdisk ramdisk.gz -o boot.img

#rm boot.blob
#./tools/tegra3_kernel_blob_creator/kernel_blob_creator -i boot.img -o boot.blob

#rm package/boot.blob
#cp boot2.blob package/boot.blob

#cd package
#rm package.zip
#zip -r package.zip *
