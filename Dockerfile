FROM lsiobase/alpine:amd64-3.8

RUN \
  echo "installing packages" && \
  apk add --no-cache \
    murmur \
    icu-libs

COPY root/ /
EXPOSE 64738
VOLUME /config
