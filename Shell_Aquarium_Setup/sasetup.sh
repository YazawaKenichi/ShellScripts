#!/bin/bash

sudo apt install libcurses-perl
sudo apt install build-essential

mkdir tmp
cd tmp
wget http://search.cpan.org/CPAN/authors/id/K/KB/KBAUCOM/Term-Animation-2.6.tar.gz
tar -zxvf Term-Animation-2.6.tar.gz
cd Term-Animation-2.6
perl Makefile.PL && make && make test
sudo make install

cd ../
wget https://robobunny.com/projects/asciiquarium/asciiquarium.tar.gz
tar -zxvf asciiquarium.tar.gz
cd asciiquarium_1.1
sudo cp asciiquarium /usr/local/bin
sudo chmod 0755 /usr/local/bin/asciiquarium

cd ../../
sudo rm -rf /tmp

# Use : asciiquarium

