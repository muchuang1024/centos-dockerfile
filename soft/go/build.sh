#!bin/bash

installRoot=/home/go
version=1.10.3

function download() {
    wget https://dl.google.com/go/go${version}.linux-amd64.tar.gz
	tar zxvf go${version}.linux-amd64.tar.gz
}

function build() {
    mv go $installRoot
    echo "export PATH=$PATH:$installRoot/bin" >> ~/.bash_profile
    echo "export GOROOT=$installRoot" >> ~/.bash_profile
    echo "export GOPATH=/home/webroot/go" >> ~/.bash_profile
    source  ~/.bash_profile
}

download
build
