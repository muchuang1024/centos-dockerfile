#!bin/bash

installRoot=/home/zookeeper
version=3.4.14

function download() {
	wget http://apache.fayea.com/zookeeper/zookeeper-${version}/zookeeper-${version}.tar.gz
	tar zxvf zookeeper-${version}.tar.gz
}

function install() {
	cp -R zookeeper-${version} $installRoot
}

download
install
cp -rf ./conf ./data ./log ./control.sh ./README.md $installRoot