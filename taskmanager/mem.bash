#!/bin/bash

while $(test True)
do
    echo -e "\033[2J"
    free -h
    sleep 0.25s
done

