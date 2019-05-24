FROM centos:centos7

COPY ./init.sh /home
COPY ./soft /home/soft

# centos environment init
RUN sh /home/init.sh

# soft build => /home
RUN cd /home/soft/zookeeper && sh build.sh 
RUN cd /home/soft/redis && sh build.sh 

# soft start
RUN cd /home/zookeeper && sh control.sh start
RUN cd /home/redis && sh control.sh start
