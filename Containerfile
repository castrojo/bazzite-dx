FROM ghcr.io/centos-workstation/main:latest

COPY system_files /
COPY build.sh /tmp/build.sh

RUN ln -sf /run /var/run

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit 

RUN bootc container lint
