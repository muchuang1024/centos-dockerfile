#!bin/bash

installRoot=/home/mysql

function download() {
    wget http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm --no-check-certificate
    rpm -ivh mysql-community-release-el7-5.noarch.rpm
 }

function build() {
    yum install mysql-server -y
    mysql_install_db
}

download
build
mkdir $installRoot && cp -rf ./log ./control.sh ./my.cnf $installRoot

