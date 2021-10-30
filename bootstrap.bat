rem debug
if not exist "/build" mkdir build
cd build
if not exist "/debug" mkdir debug
cd debug
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug -DCMAKE_TOOLCHAIN_FILE=../../arm-bare-metal.cmake ../..

rem release
cd ..
if not exist "/release" mkdir release
cd release
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_TOOLCHAIN_FILE=../../arm-bare-metal.cmake ../..
cd ../..
