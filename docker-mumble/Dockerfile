FROM sandlayth/armv7l-alpine
MAINTAINER Sandlayth <modepadu95@riseup.net>

RUN adduser -Du 1000 mumble \ 
 && apk update \
 && apk add --no-cache murmur \ 
 && mkdir /data && chown 1000 /data

ADD mumble-server.ini /config/mumble-server.ini

VOLUME ["/data", "/config"]

EXPOSE 64738/udp

USER mumble
CMD ["murmurd", "-fg", "-ini", "/config/mumble-server.ini"]
