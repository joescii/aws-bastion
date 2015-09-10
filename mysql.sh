#!/bin/bash

set -e

set version="5.6.19"
set target="mysql-${version}-linux-glibc2.5-x86_64"
set targz="${target}.tar.gz"

cd /home/ubuntu
wget http://downloads.mysql.com/archives/get/file/${targz}
gunzip -cdfv ${targz} | tar -vx 
rm ${targz}
echo "PATH=\$PATH:/home/ubuntu/${target}/bin/" >> .profile
echo "PATH=\$PATH:/home/ubuntu/${target}/bin/" >> .bashrc
