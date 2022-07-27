#!/bin/bash

# exit when any command fails
set -e

DEPS_PATH=$PWD/dependencies

cd ../BOUT-dev

git submodule update --init --recursive

cmake . -B build-gnu-openmpi -DCMAKE_BUILD_TYPE=Release -DCHECK=0 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DPETSC_DIR=$DEPS_PATH/petsc-build -DPETSC_ARCH="" -DBOUT_USE_HDF5=OFF -DNC_CONFIG=$DEPS_PATH/netcdf-build/bin/nc-config -DNCXX4_CONFIG=$DEPS_PATH/netcdf-build/bin/ncxx4-config -DFFTW_ROOT=$DEPS_PATH/fftw-build -DBOUT_IGNORE_CONDA_ENV=ON -DBOUT_UPDATE_GIT_SUBMODULE=OFF -DBOUT_BUILD_EXAMPLES=ON

cmake --build build-gnu-openmpi -j 16
