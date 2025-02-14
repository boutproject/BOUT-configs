#!/bin/bash

set -e

# HDF5
cd dependencies
DEPS_ROOT=$(pwd)
mkdir hdf5-build
wget https://support.hdfgroup.org/ftp/HDF5/releases/hdf5-1.12/hdf5-1.12.1/src/hdf5-1.12.1.tar.bz2
tar xjf hdf5-1.12.1.tar.bz2
cd hdf5-1.12.1
./configure --prefix $DEPS_ROOT/hdf5-build --enable-build-mode=production
make -j 16
make install
