#!/bin/sh
set -x

rm -rf cmake
mkdir cmake
cd cmake
cmake .. -DCMAKE_TOOLCHAIN_FILE=/work/vcpkg/scripts/buildsystems/vcpkg.cmake -Duse_prov_client=ON -Dhsm_type_symm_key:BOOL=ON
cmake --build .
