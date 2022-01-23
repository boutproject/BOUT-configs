#!/bin/bash

# exit when any command fails
set -e

# Build dependencies that BOUT++'s CMake configuration does not handle yet
mkdir dependencies

scripts/build-fftw.sh
scripts/build-hdf5.sh
scripts/build-netcdf.sh
scripts/build-netcdf-cxx4.sh
scripts/build-petsc.sh
