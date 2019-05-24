# !bin/bash

function start() {
 	./bin/zkServer.sh start ./conf/zoo1.cfg
 	./bin/zkServer.sh start ./conf/zoo2.cfg
 	./bin/zkServer.sh start ./conf/zoo3.cfg
}

function stop() {
	ps aux | grep zoo | grep -v 'grep' | awk '{print $2}' | xargs kill
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