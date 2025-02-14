#!/bin/bash

set -e

# FFTW
cd dependencies
DEPS_ROOT=$(pwd)
mkdir fftw-build
wget https://www.fftw.org/fftw-3.3.10.tar.gz
tar xzf fftw-3.3.10.tar.gz
cd fftw-3.3.10
./configure --prefix $DEPS_ROOT/fftw-build --enable-shared --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-avx-128-fma
make -j 16
make install
