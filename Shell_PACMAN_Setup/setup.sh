#!/bin/bash

sudo apt-get install libncurses5-dev groff
mkdir tmp
cd tmp
wget http://downloads.sourceforge.net/project/myman/myman-cvs/myman-cvs-2009-10-30/myman-wip-2009-10-30.tar.gz
tar xvfvz myman-wip-2009-10-30.tar.gz
cd myman-wip-2009-10-30/
./configure
make
sudo make install
cd ../../

sudo rm -rf ./tmp

# myman

