FROM sandlayth/armv7l-alpine
MAINTAINER Sandlayth <modepadu95@riseup.net>

WORKDIR /app
VOLUME /app
COPY startup.sh /startup.sh

RUN apk add --update mysql mysql-client && rm -f /var/cache/apk/*
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
