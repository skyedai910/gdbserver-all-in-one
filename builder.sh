#!/bin/bash

GDB_VERSION=$1
TARGETARCH=$2


echo "Start build buildroot"
cd buildroot
make clean
cp ../config/${TARGETARCH}-config .config
make
export PATH=`pwd`/output/host/bin:$PATH
tar -zcvf ${TARGETARCH}-buildroot.tar.gz output/host/*
cp ${TARGETARCH}-buildroot.tar.gz /releases/

echo "test buildroot"
${TARGETARCH}-linux-gcc --version

cd ..


echo "Start build gdb"
HOMEDIR=`pwd`
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz
cd gdb-${GDB_VERSION}
mkdir build
mkdir out
cd build
../configure\
 --prefix=${HOMEDIR}/gdb-${GDB_VERSION}/out\
 --program-prefix=${TARGETARCH}-linux-${GDB_VERSION}\
 --host=${TARGETARCH}-linux\
 --disable-werror\
 LDFLAGS=-static
make -j 16
make install
cd ../out/bin
tar -zcvf ${TARGETARCH}-linux-${GDB_VERSION}-gdb.tar.gz *
cp ${TARGETARCH}-linux-${GDB_VERSION}-gdbserver.tar.gz /releases/
cd ${HOMEDIR}
rm -rf gdb-${GDB_VERSION} gdb-${GDB_VERSION}.tar.gz


echo "Check releases"
ls /releases