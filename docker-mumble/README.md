# docker-arm-mumble

This is a port of [luzifer/mumble](https://hub.docker.com/u/luzifer/mumble/) to the ARM architecture.

This repository contains **Dockerfile** of [Mumble](http://wiki.mumble.info/wiki/Main_Page) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/luzifer/mumble/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


## Use it now

To launch it, just type:

```
docker run -dt -p 64738:64738 sandlayth/arm-mumble
```

## Base Docker Image

- [debian](https://hub.docker.com/sandlayth/arm-debian)

## Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/luzifer/mumble/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull luzifer/mumble`
