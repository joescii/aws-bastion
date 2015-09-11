#!/bin/bash

set -e

version="5.6.19"
target="mysql-${version}-linux-glibc2.5-x86_64"
targz="${target}.tar.gz"

cd /home/ubuntu
wget http://downloads.mysql.com/archives/get/file/${targz}
gunzip -cdfv ${targz} | tar -vx 
rm ${targz}

pathUpdate="PATH=\$PATH:/home/ubuntu/${target}/bin/"

echo ${pathUpdate} >> .profile
echo ${pathUpdate} > tmp
cat .bashrc >> tmp
mv tmp .bashrc
chmod 644 .bashrc
