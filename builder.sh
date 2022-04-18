#!/bin/bash

GDB_VERSION=$1
TARGETARCH=$2

echo "Start build buildroot"
cd buildroot
make clean
cp ../config/${TARGETARCH}-config .config
make
export PATH=`pwd`/output/host/bin:$PATH
tar -zcvf ${TARGETARCH}-buildroot.tar.gz output/host/bin/
cp ${TARGETARCH}-buildroot.tar.gz /releases/
cd ..

echo "Start build gdb"
cd gdb-${GDB_VERSION}
mkdir build
mkdir out
cd build
../configure\
 --prefix=`pwd`/../out\
 --program-suffix=-${TARGETARCH}-${GDB_VERSION}\
 --host=${TARGETARCH}-linux\
 --disable-werror\
 --enable-debug\
 --disable-shared\
 --enable-static
make -j8 && make install
cd ../out/bin
tar -zcvf ${TARGETARCH}-${GDB_VERSION}-gdb.tar.gz *
cp ${TARGETARCH}-${GDB_VERSION}-gdb.tar.gz /releases/
cd ../..
rm -rf build out
cd ..

echo "Check releases"
ls /releases