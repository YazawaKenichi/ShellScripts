#!/bin/bash

echo -n ProjectPass(Relative):
read STR

mkdir ./STR/build
cd ./STR/build
export PICO_SDK_PATH=../../pico-sdk
cmake ..
cd ../
make -j4
