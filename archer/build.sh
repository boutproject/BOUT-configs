#!/bin/bash

# exit when any command fails
set -e

cd BOUT-dev

PETSC_DIR=$PWD/../dependencies/petsc-build PETSC_ARCH="" cmake . -B build -DCMAKE_BUILD_TYPE=Release -DCHECK=0 -DCMAKE_CXX_COMPILER=CC -DCMAKE_FTN_COMPILER=ftn -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON
cmake --build build -j 16
