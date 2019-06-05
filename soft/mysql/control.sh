# !bin/bash

function start() {
    # docker 启容器后，hostname变了，mysql data文件需要重新初始化，造成不能启动，这里设置下目录权限
    chown -R mysql:mysql /var/lib/mysql /var/run/mysqld
    mysqld --user=root &
}

function stop() {
	ps aux | grep mysql | grep -v 'grep' | awk '{print $2}' | xargs kill
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
