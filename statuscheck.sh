#!/bin/bash


echo " script to check the status check of service "


read -p " Enter the name of the service you would like to check " name

STATUS=$(sudo systemctl is-active $name)
STOP=$(sudo systemctl inactive $name)
RESTART=$(sudo systemctl restart $name)

yes=$1
no=$2


if [ "${STATUS}" = "active" ]; then
	echo "Service is running: Execute your tasks .....:"
	read -p 'Would you like to stop the service: yes or no ' choice
	case "$choice" in 
		"yes")
		 	echo "service is now stopped: $STOP"
			;;
		  "no")
		 	echo "Restarting service now: $RESTART"
		        ;;
		  "*")
		 	echo "select either yes or no :"
			;;
	esac


  elif [ "${STATUS}" = "inactive" ]; then
  	  echo "Service is not running..."
	  read -p'Would you like to stop the service: yes or no' choice
       	  case "$choice" in

                 "yes")
                        echo "service is now stopped: $STOP"
                        ;;
                 "no")
                        echo "Restarting service now: $RESTART"
                        ;;
                  "*")
                        echo "select either yes or no :"
                        ;;
       	esac
      
  else
      "something else"	  
   
fi


