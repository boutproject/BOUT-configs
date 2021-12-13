#!/bin/bash

# exit when any command fails
set -e

cd BOUT-dev

git submodule update --init --recursive

PETSC_DIR=$PWD/../dependencies/petsc-build PETSC_ARCH="" cmake . -B build -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_FLAGS_RELEASE="-fast -DNDEBUG" -DCHECK=0 -DCMAKE_CXX_COMPILER=CC -DCMAKE_FTN_COMPILER=ftn -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON
cmake --build build -j 16
