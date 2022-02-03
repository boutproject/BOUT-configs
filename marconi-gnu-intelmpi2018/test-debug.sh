#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-intelmpi-debug2018 --target check -j 16
