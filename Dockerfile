FROM ubuntu:23.04

LABEL maintainer="Coeus <r.anerg@gmail.com>"

RUN set -xe \
    && apt-get update \
    && apt-get install -y ca-certificates curl bash \
    && curl -s https://install.zerotier.com | bash

COPY boot.sh /boot.sh
EXPOSE 9993/udp

ENTRYPOINT ["/boot.sh"]