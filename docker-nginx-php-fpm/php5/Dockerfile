FROM sandlayth/armv7l-alpine
MAINTAINER Sandlayth <modepadu95@riseup.net> 


RUN apk update \
    && apk add --no-cache nginx ca-certificates \
    php \
    php5 \
    php5-dev \
    php5-xml \
    php5-pear \
    php5-dom \
    php5-ctype \
    php5-curl \
    php5-fpm \
    php5-gd \
    php5-json \
    php5-mcrypt \
    php5-opcache \
    php5-openssl \
    php5-pcntl \
    php5-pdo \
    php5-pdo_mysql \
    php5-posix \
    php5-xml \
    php5-zip \
    py-pygments 

RUN mkdir -p /srv/http/default/ && mkdir /run/nginx/
RUN rm /etc/nginx/conf.d/*

COPY files/nginx.conf /etc/nginx/nginx.conf
COPY files/default.conf /etc/nginx/conf.d/default.conf
COPY files/index.php /srv/http/default/

COPY files/fpm-pool.conf  /etc/php5/php5-fpm.d/default.conf
COPY files/php.ini /etc/php5/conf.d/default.conf 

COPY files/run.sh /run.sh

RUN chmod 755 /run.sh

EXPOSE 80 443
VOLUME /srv/http

CMD ["/run.sh"]
