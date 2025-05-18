#!/bin/bash


echo " Script to check if tomcat service is installed , configured and running or not "


if [ $# -eq 1 ]; then
	echo "Usage : $0 <space> <service>" 
fi

space="$1"
srv="$2"
avail="$(df -h | awk '{print $4}')"
if [ "$avail" -le "$space" ]; then

	echo " Disk is not having enough space to install $srv"
else
	echo "Disk is having enough space to install $srv service"

fi

if [ -d  "/opt/tomcat" ]; then
	
    echo "$srv is installed in /opt folder"
        if [ -e "ps aux | grep $srv" ]; then 
		set -e
		echo " $srv is running "
	else
		echo "$srv is not running "
	fi
else
	echo " tomcat is not present is /opt folder, need to install "
fi


