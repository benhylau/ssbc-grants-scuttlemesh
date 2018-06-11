FROM alpine
MAINTAINER Benedict Lau <benedict.lau@groundupworks.com>

RUN apk add --no-cache nodejs nginx php5-fpm php5-json

RUN apk add --no-cache --virtual .build libtool nodejs-npm autoconf automake build-base python &&  \
    npm install scuttlebot \
                ssb-keys \
                ssb-client \
                ssb-feed \
                    -g --unsafe-perm ; \
    apk del .build

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN mkdir /run/nginx; \
    apk add --no-cache --virtual .git git; \
    git clone https://github.com/darkdrgn2k/ssb-web-pi.git ~/ssb-web-pi.git; \
    cp -r ~/ssb-web-pi.git/html /var/www/html; \
    cp -r ~/ssb-web-pi.git/backend /var/www/backend; \
    mkdir /var/www/backend/keys ; \
    chown nobody.nobody  -R /var/www/html /var/www/backend; \
    chown nobody.nobody  -R /var/www/html/* /var/www/backend/*; \
    apk del .git;\
    ln -s /usr/lib/node_modules /var/www/backend; \
    ln -s /usr/bin/sbot /usr/local/bin/sbot; \
    ln -s /usr/bin/node /usr/bin/nodejs

EXPOSE 80
EXPOSE 8080

ENTRYPOINT  /bin/sh ~/ssb-web-pi.git/start-docker.sh