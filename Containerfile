FROM ghcr.io/centos-workstation/main:latest

COPY build.sh /tmp/build.sh

RUN mkdir -p /var/run
RUN ln -sf /var/run /run

RUN mkdir -p /var/lib/alternatives && \
    /tmp/build.sh && \
    ostree container commit

RUN bootc container lint
## NOTES:
# - /var/lib/alternatives is required to prevent failure with some RPM installs
# - All RUN commands must end with ostree container commit
#   see: https://coreos.github.io/rpm-ostree/container/#using-ostree-container-commit
