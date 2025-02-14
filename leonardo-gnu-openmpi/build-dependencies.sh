#!/bin/bash

# exit when any command fails
set -e

# Build dependencies that BOUT++'s CMake configuration does not handle yet
mkdir dependencies

scripts/build-petsc.sh
