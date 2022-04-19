FROM ubuntu:latest

ARG GDB_VERSION
ARG TARGETPLATFORM
ARG TARGETARCH
ARG TARGETVARIANT

RUN apt-get update && \
    apt-get install -y \
    wget \
    file \
    gcc g++ \
    make \
    gawk \
    libgetopt-argvfile-perl libexpat1-dev libgmp-dev libgmp3-dev\
    bison autoconf && \
    rm -rf /var/lib/apt/list/*

COPY gdb_builder.sh /root/

RUN chmod +x /root/gdb_builder.sh
RUN /root/gdb_builder.sh

RUN apt-get remove -y \
    wget \
    file \
    gcc g++ \
    make \
    gawk \
    libgetopt-argvfile-perl libexpat1-dev libgmp-dev libgmp3-dev\
    bison autoconf && \
    apt autoremove -y
