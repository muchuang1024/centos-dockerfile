# !bin/bash

function start() {
	# run redis
	./bin/redis-server ./conf/redis_6379.conf
	./bin/redis-server ./conf/redis_6380.conf

	# run sentinel
	./bin/redis-sentinel ./conf/sentinel_26379.conf
	./bin/redis-sentinel ./conf/sentinel_26380.conf
	./bin/redis-sentinel ./conf/sentinel_26381.conf
}

function stop() {
	ps aux | grep redis | grep -v 'grep' | awk '{print $2}' | xargs kill
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
