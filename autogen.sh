#!/bin/sh
#apt-get build-dep slim
#apt-get install libpng-dev libck-connector-dev
#rm -rf build/
#mkdir build
cd build
if [ "$1" = "debug" ];then
cmake .. -DAPP_DEBUG=yes -DCMAKE_BUILD_TYPE=Debug
else
cmake .. -DUSE_CONSOLEKIT=yes
#cmake .. -DUSE_CONSOLEKIT=yes -DCMAKE_BUILD_TYPE=Debug
fi
make
make install
