#!/bin/bash

# exit when any command fails
set -e

cd BOUT-dev

git submodule update --init --recursive

cmake . -B build -DCMAKE_BUILD_TYPE=Release -DCHECK=0 -DBOUT_DOWNLOAD_SUNDIALS=ON -DBOUT_USE_PETSC=ON -DPETSC_DIR=$PWD/../dependencies/petsc-build -DPETSC_ARCH="" -DBOUT_IGNORE_CONDA_ENV=ON
cmake --build build -j 4
