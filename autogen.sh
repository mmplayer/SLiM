#!/bin/sh
#apt-get build-dep slim
#apt-get install libpng-dev
rm -rf build/
mkdir build
cd build
cmake ..
make 
make install
