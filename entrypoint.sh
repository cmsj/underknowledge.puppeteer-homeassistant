#!/usr/bin/env bash

while true;
do
    ./homeassistant.sh
    # Work around a stupid disk space exhaustion bug
    rm -rf /tmp/puppeteer*profile*
    sleep ${SLEEP:=60} || sleep 300
done
