#!bin/bash

yum -y install wget 
yum -y install java-1.8.0-openjdk
yum -y install gcc automake autoconf libtool make

# install pt-query-digest
wget percona.com/get/pt-query-digest 
chmod u+x pt-query-digest
mv pt-query-digest /usr/bin
yum install wget -y
