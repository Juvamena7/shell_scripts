#!/bin/bash


echo " Script to check if tomcat service is installed , configured and running or not "


if [ $# -eq 1 ]; then
        echo "Usage : $0 <space>" 
fi

space=$1
avail="$(df -h | awk '{print $4}')"

if [ "$avail" -le "$space" ]; then

        echo " Disk is not having enough space to install tomcat"
else
        echo "Disk is having enough space to install tomcat service"

fi

if [ -d  "/opt/tomcat" ]; then
        
    echo "tomcat is installed in /opt folder"

        if [ -e "ps aux | grep tomcat" ]; then 
                echo " Tomcat is running "
        else
                echo "Tomcat is not running "
        fi
else
        echo " Tomcat is not present is /opt folder, need to install "
fi

