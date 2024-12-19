FROM ghcr.io/centos-workstation/main:${MAJOR_VERSION:-latest}

ARG IMAGE_NAME="${IMAGE_NAME:-achillobator}"
ARG IMAGE_VENDOR="${IMAGE_VENDOR:-centos-workstation}"
ARG MAJOR_VERSION="${MAJOR_VERSION:-latest}"

COPY system_files /
COPY build.sh /tmp/build.sh

RUN ln -sf /run /var/run

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    dnf clean all && \
    ostree container commit 

RUN bootc container lint
