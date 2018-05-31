FROM alpine
MAINTAINER Benedict Lau <benedict.lau@groundupworks.com>

RUN apk add --update-cache
RUN apk add autoconf automake build-base libtool ncurses nodejs nodejs-npm python

RUN npm install scuttlebot -g --unsafe-perm

ENTRYPOINT sbot server
