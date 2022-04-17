mkdir -p /gdb/$GDB_VERSION
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz
cd gdb-${GDB_VERSION}
mkdir build
mkdir out
cd build
../configure --prefix=/gdb/out --program-prefix=${GLIBC_VERSION}-linux- --disable-werror --enable-debug --disable-shared --enable-static
make -j8 && make install
ls ../out
file ../out/${GDB_VERSION}-linux-gdbserver
