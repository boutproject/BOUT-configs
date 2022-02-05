#!/bin/bash

cd ../BOUT-dev

cmake --build build-intel2018-debug --target check -j 16
