#!/bin/bash

echo " image is deleted with image id $1 "

image_id="$1"
del=$(sudo docker rmi -f  $image_id)          


if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <image_id>"
	echo "$del"	
	exit 1
fi


















