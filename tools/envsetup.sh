#!/bin/bash

#git clone https://github.com/anestisb/android-unpackbootimg.git
git clone https://github.com/osm0sis/mkbootimg.git
cd mkbootimg
make

cd ..
git clone https://github.com/last-xelnaga/tegra3_kernel_blob_creator.git
cd tegra3_kernel_blob_creator
make
