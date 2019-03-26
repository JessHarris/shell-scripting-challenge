#!/bin/bash
#Create a startup script for an application called sleepwalkingserver,
#The script should be named sleepwalking and accept "start" and "stop" as arguments. If
#anything other than "start" or "stop" is provided as an argument, display a usage statement:
#"Usage sleepwalking start|stop" and terminate the script with an exit status of 1.

#Script to start and stop sleep-walking-server
case "$1" in 
	start)
		./sleep-walking-server.sh
		;;
	stop)
		kill $(cat sleepwalkingserver.pid)
		;;
	*)
		echo "Usage sleepwalking start|stop"
		exit 1
esac

	
