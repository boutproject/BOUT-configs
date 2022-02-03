#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-intelmpi-debug --target check -j 16
