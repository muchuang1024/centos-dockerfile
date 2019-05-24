#!bin/bash

installRoot=/home/redis
version=3.0.0

function download() {
	wget http://download.redis.io/releases/redis-${version}.tar.gz
	tar zxvf redis-${version}.tar.gz
}

function build() {
	cd redis-${version} 
	make PREFIX=$installRoot install
	cd ../
}

download
install
cp -rf ./conf ./data ./log ./control.sh ./README.md $installRoot
