FROM sandlayth/armv7l-alpine
MAINTAINER Sandlayth <modepadu95@riseup.net> 

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

RUN apk update \
    && apk add --no-cache nginx ca-certificates \
    php7 \
    php7-dev \
    php7-xml \
    php7-pear \
    php7-dom \
    php7-ctype \
    php7-curl \
    php7-fpm \
    php7-gd \
    php7-json \
    php7-mbstring \
    php7-mcrypt \
    php7-mysqlnd \
    php7-opcache \
    php7-openssl \
    php7-pcntl \
    php7-pdo \
    php7-pdo_mysql \
    php7-posix \
    php7-session \
    php7-tidy \
    php7-xml \
    php7-zip \
    py-pygments 

RUN mkdir -p /srv/http/default/ && mkdir /run/nginx/
RUN rm /etc/nginx/conf.d/*

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/default.conf /etc/nginx/conf.d/default.conf
COPY files/index.php /srv/http/default/

COPY files/fpm-pool.conf  /etc/php7/php-fpm.d/default.conf
COPY files/php.ini /etc/php7/conf.d/default.conf 

COPY files/run.sh /run.sh

RUN chmod 755 /run.sh

EXPOSE 80 443
VOLUME /srv/http

CMD ["/run.sh"]
