#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-intelmpi2018-debug --target check -j 16
