#!/bin/bash

set -e

# NetCDF-CXX4
# Installed to the same directory as netcdf-c, because this makes it easier for BOUT++'s config
cd dependencies
DEPS_ROOT=$(pwd)
wget https://downloads.unidata.ucar.edu/netcdf-cxx/4.3.1/netcdf-cxx4-4.3.1.tar.gz
tar xzf netcdf-cxx4-4.3.1.tar.gz
cd netcdf-cxx4-4.3.1
CPPFLAGS="-I$DEPS_ROOT/hdf5-build/include -I$DEPS_ROOT/netcdf-build/include" LDFLAGS="-L$DEPS_ROOT/hdf5-build/lib/ -L$DEPS_ROOT/netcdf-build/lib/" ./configure --prefix=$DEPS_ROOT/netcdf-build
make -j 16
make install
