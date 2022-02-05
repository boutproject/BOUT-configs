#!/bin/bash

cd ../BOUT-dev

cmake --build build-intel2018 --target check -j 16
