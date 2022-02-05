#!/bin/bash

# exit when any command fails
set -e

DEPS_PATH=$PWD/dependencies

cd ../BOUT-dev

git submodule update --init --recursive

cmake . -B build-intel2018 -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-O3 -axCORE-AVX512 -march=skylake-avx512 -mtune=skylake-avx512" -DCHECK=0 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DPETSC_DIR=$DEPS_PATH/petsc-build -DPETSC_ARCH="" -DBOUT_USE_HDF5=OFF -DCMAKE_LIBRARY_PATH="-L/cineca/prod/opt/libraries/netcdf/4.6.1/intelmpi--2018--binary/lib" -DBOUT_IGNORE_CONDA_ENV=ON

cmake --build build-intel2018 -j 16
