FROM ubuntu:latest

ARG GDB_VERSION

RUN apt-get update && \
    apt-get install -y \
    wget \
    gcc \
    make \
    gawk \
    libgetopt-argvfile-perl \
    bison && \
    rm -rf /var/lib/apt/list/*

COPY gdb_builder.sh /root/

RUN chmod +x /root/gdb_builder.sh && \
    /root/gdb_builder.sh

RUN apt autoremove -yRUN apt-get remove -y \
    wget \
    gcc \
    make \
    gawk \
    libgetopt-argvfile-perl \
    bison && \
    apt autoremove -y