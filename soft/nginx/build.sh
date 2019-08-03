#!bin/bash

function download() {
    rpm -ivh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm
}

function build() {
    yum -y install nginx
}

download
build
