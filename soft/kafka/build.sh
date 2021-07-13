#!bin/bash

function download() {
    wget https://downloads.apache.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz
    tar -xvf kafka_2.13-2.7.0.tgz
    mv kafka_2.13-2.7.0 /home/kafka
}

function build() {
    yum -y install nginx
}

download
build


