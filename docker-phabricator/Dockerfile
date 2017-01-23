#
# Nasqueron  - Phabricator image
#
FROM sandlayth/armv7l-nginx-php5-fpm
MAINTAINER Sandlayth <modepadu95@riseup.net> 

#
# Prepare the container
#

RUN apk update && apk add --no-cache \
            php5-apcu \
	    mercurial \
            gcc \
	    musl-dev \ 
	    make \
            subversion \
            openssh-client \
	    php5-mysql \ 
            php5-iconv \
	    mysql-client \ 
	    git \
            pcre-dev \ 
            autoconf \
            wget \
	    bash \
	    ncurses

RUN mkdir /srv/phabricator/

WORKDIR /srv/phabricator
	
RUN git clone https://github.com/phacility/libphutil.git && \
    git clone https://github.com/phacility/arcanist.git && \
    git clone https://github.com/phacility/phabricator.git && \
    mkdir -p /var/tmp/phd

COPY files /

RUN echo 'always_populate_raw_post_data = -1' >> /etc/php5/php.ini && \
    echo 'post_max_size = 32M' >> /etc/php5/php.ini && \
    echo 'opcache.validate_timestamps = 0' >> /etc/php5/php.ini 


VOLUME ["/opt/phabricator/conf/local", "/var/repo"]

WORKDIR /srv/phabricator/phabricator

CMD ["/usr/local/sbin/init-container"]
