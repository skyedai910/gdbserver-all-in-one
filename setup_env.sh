#!/bin/bash

GDB_VERSION=$1

sudo apt-get update -y
sudo apt-get install -y libncurs*
sudo apt-get install -y\
 libncurses5-dev\
 patch\
 make\
 gawk\
 libgetopt-argvfile-perl\
 libexpat1-dev\
 libgmp-dev\
 libgmp3-dev\
 bison\
 autoconf

mkdir /releases

git clone https://github.com/buildroot/buildroot.git
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz
