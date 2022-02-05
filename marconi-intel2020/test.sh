#!/bin/bash

cd ../BOUT-dev

cmake --build build-intel2020 --target check -j 16
