#!/bin/bash

GDB_VERSION=$1
TARGETARCH=$2

cd buildroot
make clean
cp ../config/${TARGETARCH}-config .config
make
export PATH=`pwd`/output/host/bin:$PATH
cd ..

ls buildroot/output/host/bin
${TARGETARCH}-linux-gcc --version

# cd gdb-${GDB_VERSION}
# mkdir build
# mkdir out
# ../configure\
#  --prefix=../out\
#  --program-suffix=-${TARGETARCH}-${GDB_VERSION}\
#  --host=${TARGETARCH}-linux\
#  --disable-werror\
#  --enable-debug\
#  --disable-shared\
#  --enable-static
# make -j8 && make install
# cd ../out/bin
# tar tar -zcvf ${TARGETARCH}-${GDB_VERSION}.tar.gz *
# cp ${TARGETARCH}-${GDB_VERSION}.tar.gz /releases/
# cd ../..
# rm -rf build out
# cd ..


ls /releases