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
 libgmp-dev libgmp-ocaml-dev libgmp10\
 libgmp10-doc libgmp3-dev libgmpada7\
 libgmpada9-dev libgmpxx4ldbl\
 bison\
 autoconf\
 texinfo\
 m4\
 flex

mkdir /releases

git clone https://github.com/buildroot/buildroot.git
