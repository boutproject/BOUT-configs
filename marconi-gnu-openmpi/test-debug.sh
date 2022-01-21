#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-openmpi-debug --target check -j 16
