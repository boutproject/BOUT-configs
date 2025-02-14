#!/bin/bash

cd ../BOUT-dev

cmake --build build-debug --target check -j 16
