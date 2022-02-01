#!/bin/bash

# exit when any command fails
set -e

DEPS_PATH=$PWD/dependencies

cd ../BOUT-dev

git submodule update --init --recursive

cmake . -B build-gnu-openmpi-debug -DCMAKE_BUILD_TYPE=Debug -DCHECK=4 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DPETSC_DIR=$DEPS_PATH/petsc-build -DPETSC_ARCH="" -DBOUT_USE_HDF5=OFF -DNC_CONFIG=$DEPS_PATH/netcdf-build/bin/nc-config -DNCXX4_CONFIG=$DEPS_PATH/netcdf-build/bin/ncxx4-config -DFFTW_ROOT=$DEPS_PATH/fftw-build -DBOUT_IGNORE_CONDA_ENV=ON

cmake --build build-gnu-openmpi-debug -j 16
