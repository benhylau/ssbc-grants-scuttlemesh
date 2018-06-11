FROM alpine
MAINTAINER Benedict Lau <benedict.lau@groundupworks.com>

RUN apk add --no-cache nodejs

RUN apk add --no-cache --virtual .build libtool nodejs-npm autoconf automake build-base python &&  \
    npm install scuttlebot -g --unsafe-perm ; \
    apk del .build

ENTRYPOINT sbot server
