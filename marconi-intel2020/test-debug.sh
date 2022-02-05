#!/bin/bash

cd ../BOUT-dev

cmake --build build-intel2020-debug --target check -j 16
