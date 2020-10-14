FROM alpine:3.11

ENV POWERDNS_RECURSOR_VERSION=4.3.3

RUN set -ex \
    && apk --no-cache add \
      boost-context \
      boost-filesystem \
      lua5.3-libs \
      libgcc \
      libstdc++ \
      openssl \
    \
    && apk --no-cache add --virtual build-deps \
      boost-dev \
      g++ \
      lua5.3-dev \
      make \
      openssl-dev \
      wget \
    \
    && wget -qO - https://downloads.powerdns.com/releases/pdns-recursor-$POWERDNS_RECURSOR_VERSION.tar.bz2 | tar xjf - -C /tmp \
    && cd /tmp/pdns-recursor-$POWERDNS_RECURSOR_VERSION \
    && ./configure --sysconfdir=/etc \
    && make install \
    \
    && apk del build-deps \
    && cd / && rm -rf /tmp/*

EXPOSE 53 53/udp 8081

ENTRYPOINT ["pdns_recursor", "--setuid=65534", "--setgid=65534", "--write-pid=no", "--disable-syslog=yes"]
