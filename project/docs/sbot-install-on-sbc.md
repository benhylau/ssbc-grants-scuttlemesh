Installing Scuttlebot on single-board computers (SBCs)
======================================================

## mesh-orange

Install on [mesh-orange](https://github.com/tomeshnet/mesh-orange) running on Raspberry Pi.

```
apt update
apt install build-essential git gnupg2 -y

curl -sL https://deb.nodesource.com/setup_8.x | bash -
apt install nodejs -y

npm install scuttlebot -g --unsafe-perm
```

## alpine

Installing on [alpine docker image](https://hub.docker.com/_/alpine/) running on mesh-orange on Raspberry Pi.

```
apk add --update-cache
apk add autoconf automake build-base libtool ncurses nodejs nodejs-npm python

npm install scuttlebot -g --unsafe-perm
```
