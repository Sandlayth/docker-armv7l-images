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

# RUN  sed -i "$ s|\-n||g" /usr/bin/pecl && pecl install channel://pecl.php.net/APCu-4.0.10

RUN mkdir /srv/phabricator/

WORKDIR /srv/phabricator
	
RUN git clone https://github.com/phacility/libphutil.git && \
    git clone https://github.com/phacility/arcanist.git && \
    git clone https://github.com/phacility/phabricator.git && \
    mkdir -p /var/tmp/phd

COPY files /

#
# Docker properties
#

VOLUME ["/opt/phabricator/conf/local", "/var/repo"]

WORKDIR /srv/phabricator/phabricator

CMD ["/usr/local/sbin/init-container"]
