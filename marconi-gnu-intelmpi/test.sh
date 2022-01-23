#!/bin/bash

cd ../BOUT-dev

cmake --build build-gnu-intelmpi --target check -j 16
