#!bin/bash

installRoot=/home/mysql
dataDir=${installRoot}/data

function download() {
    wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm --no-check-certificate
    rpm -ivh mysql-community-release-el7-5.noarch.rpm
 }

function build() {
    yum install mysql-server -y
    mkdir $installRoot && cp -rf ./data ./log ./control.sh ./my.cnf $installRoot
    #cp -rap /var/lib/mysql $datadir
    mysql_install_db --user=root --datadir=$dataDir
    #ln -s /home/mysql/data/mysql.sock /var/lib/mysql/mysql.sock # 客户端默认通过连接/var/lib/mysql/mysql.sock
}

download
build

