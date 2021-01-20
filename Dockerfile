FROM archlinux:latest AS BUILD

RUN         mkdir /build
WORKDIR     /build
COPY        build.sh /build/build.sh
RUN         bash /build/build.sh

