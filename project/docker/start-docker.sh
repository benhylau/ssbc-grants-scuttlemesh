#!/bin/sh
nginx &
ssb-broadcast.sh &
sbot server
