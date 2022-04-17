FROM ubuntu:latest

ARG GDB_VERSION

COPY gdb_builder.sh /root/

RUN chmod +x /root/gdb_builder.sh && \
    /root/gdb_builder.sh

RUN apt autoremove -y