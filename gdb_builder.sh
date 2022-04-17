mkdir -p /gdb/$GDB_VERSION
wget https://ftp.gnu.org/gnu/gdb/gdb-${GDB_VERSION}.tar.gz
tar xf gdb-${GDB_VERSION}.tar.gz
cd gdb-${GDB_VERSION}
mkdir build
cd build
../configure --prefix=/gdb/out --program-prefix=${GLIBC_VERSION}-linux- --disable-werror --enable-debug=yes --enable-static=yes
ls ../out && file ../out/${GLIBC_VERSION}-linux-gdbserver