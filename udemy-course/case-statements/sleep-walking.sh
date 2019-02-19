#!/bin/bash
#Script to start and stop sleep-walking-server
case $1 in 
	start)
		./sleep-walking-server.sh
		;;
	stop)
		kill $(cat sleepwalkingserver.pid)
		;;
	*)
		echo "Usage sleepwalking start|stop"
		exit 1
		;;
esac

	
