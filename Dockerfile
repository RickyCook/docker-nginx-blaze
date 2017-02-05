FROM lsiobase/alpine:3.5
MAINTAINER Ricky Cook <github-docker-nginx-blaze@auto.thatpanda.com>

RUN \
# install
  apk add --no-cache \
    nginx openssl \
    acme-client dcron && \

# cleanup
  rm -rf /root/.cache

COPY root/ /

EXPOSE 80
EXPOSE 443
