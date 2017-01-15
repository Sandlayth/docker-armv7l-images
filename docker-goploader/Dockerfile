FROM sandlayth/armv7l-golang

MAINTAINER Sandlayth <modepadu95@riseup.net>

RUN apk update && apk add --no-cache git make musl-dev

WORKDIR /srv

RUN go get github.com/GeertJohan/go.rice

RUN go get github.com/GeertJohan/go.rice/rice

RUN go get github.com/Depado/goploader/server

RUN rice embed-go -i=github.com/Depado/goploader/server

RUN go build -o server github.com/Depado/goploader/server

COPY files/conf.yml /srv/
COPY files/run.sh /

RUN chmod 755 /run.sh

EXPOSE 80

VOLUME /srv

CMD ["/run.sh"]
