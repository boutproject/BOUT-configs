#!/bin/bash

# exit when any command fails
set -e

DEPS_PATH=$PWD/dependencies

cd ../BOUT-dev

git submodule update --init --recursive

#PETSC_DIR=$DEPS_PATH/petsc-build PETSC_ARCH="" cmake . -B build-gnu-openmpi -DCMAKE_BUILD_TYPE=Release -DCHECK=0 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DBOUT_USE_HDF5=OFF -DNC_CONFIG=../marconi-gnu-openmpi/dependencies/netcdf-build/bin/nc-config -DNCXX4_CONFIG=../marconi-gnu-openmpi/dependencies/netcdf-build/bin/ncxx4-config -DFFTW_ROOT=../marconi-gnu-openmpi/dependencies/fftw-build
## Use following version with -DBOUT_UPDATE_GIT_SUBMODULE=OFF as workaround until CMake config bug is fixed
PETSC_DIR=$DEPS_PATH/petsc-build PETSC_ARCH="" cmake . -B build-gnu-openmpi -DCMAKE_BUILD_TYPE=Release -DCHECK=0 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DBOUT_USE_HDF5=OFF -DNC_CONFIG=../marconi-gnu-openmpi/dependencies/netcdf-build/bin/nc-config -DNCXX4_CONFIG=../marconi-gnu-openmpi/dependencies/netcdf-build/bin/ncxx4-config -DFFTW_ROOT=../marconi-gnu-openmpi/dependencies/fftw-build -DBOUT_UPDATE_GIT_SUBMODULE=OFF

cmake --build build-gnu-openmpi -j 16
