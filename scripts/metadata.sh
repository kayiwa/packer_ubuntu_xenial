#!/bin/sh -eux

mkdir -p /etc;
cp /tmp/pul-metadata.json /etc/pul-metadata.json;
chmod 0444 /etc/pul-metadata.json;
rm -f /tmp/pul-metadata.json;
