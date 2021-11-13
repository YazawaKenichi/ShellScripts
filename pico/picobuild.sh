#!/bin/bash

echo -n ProjectPass(Relative):
read STR

cp ./pico-sdk/external/pico_sdk_import.cmake ./STR
mkdir ./STR/build
cd ./STR/build
export PICO_SDK_PATH=./pico-sdk
cmake ..
make -j4
