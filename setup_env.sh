#!/bin/bash

sudo apt-get update -y
sudo apt-get install libncurs* -y
sudo apt-get install libncurses5-dev patch -y

mkdir /releases

git clone git@github.com:buildroot/buildroot.git
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz