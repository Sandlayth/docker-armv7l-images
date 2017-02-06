#!/usr/bin/env sh

# This script is intended to update all images and push them

IMAGESFILE='images'

for i in $(cat "${IMAGESFILE}"); do
	pushd "../$i"
	docker build --no-cache -t $(echo "$i" | sed 's$docker-$sandlayth/armv7l-$g') .
	echo "$i successfully built."
	
	if [ "$?" -eq 0 ]; then
		docker push $(echo "$i" | sed 's$docker-$sandlayth/armv7l-$g')
		echo "$i successfully pushed."
	fi
	popd
done



