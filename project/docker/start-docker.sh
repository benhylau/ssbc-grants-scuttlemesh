#!/bin/sh
nginx &
if [ ! -f ~/.ssb/secret ]; then
  nodejs ~/.ssb/newKeys.js
fi
ssb-broadcast.sh &
sbot server
