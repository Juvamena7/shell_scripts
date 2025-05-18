#!/bin/bash


echo "Script to check if the file is present or not"


if [ $# -eq 0 ]; then
	echo " Usage: $0 <path> file_name> "
fi

path="$1"
file_name="$2"

if  [ -d "$path" ]; then

	echo " path exist "
       
else
	echo "path does not exits"
fi

if [ -e "$file_name" ]; then
	echo "file '$file_name' exist"
else
       echo "file '$file_name does not exist, creating it...."
       touch $file_name
     if [ $? -eq 0 ]; then
	 echo " file $file_name created successfully..."
 	else
       	 echo " failed to create $file_name "
	fi
fi	
