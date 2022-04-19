#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y libncurs*
sudo apt-get install -y\
 libncurses5-dev\
 patch\
 make\
 gawk\
 libgetopt-argvfile-perl\
 libexpat1-dev\
 libgmp*\
 libexpat1-dev\
 bison\
 autoconf

mkdir /releases

git clone https://github.com/buildroot/buildroot.git
