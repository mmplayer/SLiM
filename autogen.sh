#!/bin/sh
apt-get build-dep slim
apt-get install libpng-dev
rm -rf build/
mkdir build
cd build
if [ "$1" = "debug" ];then
cmake .. -DAPP_DEBUG=yes -DCMAKE_BUILD_TYPE=Debug
else
cmake ..
fi
make
make install
