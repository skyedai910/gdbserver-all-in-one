mkdir -p /gdb/$GDB_VERSION
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz
cd gdb-${GDB_VERSION}
mkdir build
mkdir out
cd build
../configure --prefix=/gdb-${GDB_VERSION}/out --program-suffix=-${TARGETARCH}${TARGETVARIANT}-${GDB_VERSION} --disable-werror --enable-debug --disable-shared --enable-static
make -j8 && make install
cd ../out/bin
tar tar -zcvf ${TARGETARCH}${TARGETVARIANT}-${GDB_VERSION}.tar.gz *
ls