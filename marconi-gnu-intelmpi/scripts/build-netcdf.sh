#!/bin/bash

set -e

# NetCDF
cd dependencies
DEPS_ROOT=$(pwd)
mkdir netcdf-build
wget https://downloads.unidata.ucar.edu/netcdf-c/4.8.1/netcdf-c-4.8.1.tar.gz
tar xzf netcdf-c-4.8.1.tar.gz
cd netcdf-c-4.8.1
CPPFLAGS="-I$DEPS_ROOT/hdf5-build/include" LDFLAGS="-L$DEPS_ROOT/hdf5-build/lib/" ./configure --prefix=$DEPS_ROOT/netcdf-build
make -j 16
make install
