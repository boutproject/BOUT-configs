#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-openmpi --target check -j 16
