#!/bin/sh

if [ `grep -c 'SERVER_NAME' /srv/conf.yml` -ne 0 ]; then 
	if [ -z "$SERVER_NAME" ]; then
		echo '$SERVER_NAME is missing. Try run the container with -e SERVER_NAME=...'
		exit 1
	fi

	sed -i s/SERVER_NAME/$SERVER_NAME/g /srv/conf.yml

fi

/srv/server
