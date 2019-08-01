#!/bin/bash
set -e

NETWORK=${NETWORK:-"jamnet"}
echo "Check NETWORK($NETWORK) exists. If not: docker network create $NETWORK"
set -x
docker network inspect "$NETWORK" >/dev/null
docker run -d --name=knocat --network="$NETWORK" --hostname=knocat --restart=always \
gitlab.scsuk.net:5005/scsuk/knocat:1.0
