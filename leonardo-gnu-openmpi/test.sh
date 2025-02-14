#!/bin/bash

cd ../BOUT-dev

cmake --build build --target check -j 16
