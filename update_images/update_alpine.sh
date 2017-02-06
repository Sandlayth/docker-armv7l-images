#!/usr/bin/env sh

# This script is intented to update alpine image

MAJOR_VERSION="3.5"
MINOR_VERSION="0"

pushd ../docker-alpine

curl https://nl.alpinelinux.org/alpine/v3.5/releases/armhf/alpine-minirootfs-3.5.0-armhf.tar.gz  > rootfs.tar.gz

docker build -t sandlayth/armv7l-alpine . && docker push sandlayth/armv7l-alpine && echo "Alpine successfully updated and pushed."

popd
