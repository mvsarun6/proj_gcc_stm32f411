#!/bin/sh
mkdir build
cd build
mkdir debug
cd debug
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=../../arm-bare-metal.cmake ../..
mkdir ../release
cd ../release
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../../arm-bare-metal.cmake ../..
cd ../..
