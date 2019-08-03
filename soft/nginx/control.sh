# !bin/bash

function start() {
    nginx
}

function stop() {
	ps aux | grep nginx | grep -v 'grep' | awk '{print $2}' | xargs kill
}

action=$1

case $action in
	"start")
		start;;
	"stop")
		stop;;
	*) 
		echo "unknow command"
		exit 1
esac
