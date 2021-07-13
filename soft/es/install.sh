/usr/share/logstash

rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
yum install logstash -y
yum install elasticsearch -y
nohup /usr/share/logstash/bin/logstash -f conf.d/kafka.conf >> nohup.out 2>&1 &

PID=`ps -ef | grep logstash | awk '{ print $2}' | head -n 1`
kill -9 ${PID}