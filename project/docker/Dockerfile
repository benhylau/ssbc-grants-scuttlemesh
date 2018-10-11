FROM alpine
MAINTAINER Benedict Lau <benedict.lau@groundupworks.com>

RUN apk add --no-cache nodejs nginx socat

RUN apk add --no-cache --virtual .build libtool nodejs-npm autoconf automake build-base python git &&  \
    npm install scuttlebot \
                ssb-keys \
                ssb-client \
                ssb-feed \
                pull-stream \
                    -g --unsafe-perm ; \
    npm install asyncmemo \
                hashlru \
                pull-stream \
                pull-cat multicb \
                hyperscript \
                pull-paramap \
                ssb-contact \
                ssb-sort \
                stream-to-pull-stream \
                emoji-server \
                pull-paginate \
                ssb-mentions \
                busboy \
                mime-types \
                pull-identify-filetype \
                human-time \
                pull-hyperscript \
                jpeg-autorotate \
                pull-catch diff \
                pull-split \
                pull-utf8-decoder \
                ssb-web-resolver \
                highlight.js \
                pull-box-stream \
                base64-url \
                ssb-backlinks \
                ssb-private \
                     --unsafe-perm;

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY ssb-broadcast.sh /usr/local/bin/ssb-broadcast.sh
COPY start-docker.sh /usr/local/bin/start-docker.sh

RUN mkdir /run/nginx; \
    apk add --no-cache --virtual .git git; \
    (sbot server &); \
    sleep 5 ;\
    cd ~/.ssb/node_modules;  \
    git clone https://github.com/ssbc/patchfoo.git patchfoo; \
    sbot plugins.install ssb-private; \
    sbot plugins.install ssb-backlinks; \
    sbot plugins.enable patchfoo; \
    sed -i 's#var Git#//var Git#' patchfoo/lib/app.js  patchfoo/lib/app.js; \
    sed -i 's#this.git = new Git(this.sbot, this.config)#//this.git = new Git(this.sbot, this.config)#' patchfoo/lib/app.js

EXPOSE 80
EXPOSE 8008
EXPOSE 8989

ENTRYPOINT /usr/local/bin/start-docker.sh
