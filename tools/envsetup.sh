#!/bin/bash

git clone https://github.com/anestisb/android-unpackbootimg.git
cd android-unpackbootimg
make

cd ..
git clone https://github.com/last-xelnaga/tegra3_kernel_blob_creator.git
cd tegra3_kernel_blob_creator
make
