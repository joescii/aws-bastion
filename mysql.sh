#!/bin/bash

set -e

version="5.6.19"
target="mysql-${version}-linux-glibc2.5-x86_64"
targz="${target}.tar.gz"

cd /home/ubuntu
wget http://downloads.mysql.com/archives/get/file/${targz}
gunzip -cdfv ${targz} | tar -vx 
rm ${targz}
echo "PATH=\$PATH:/home/ubuntu/${target}/bin/" >> .profile
echo "PATH=\$PATH:/home/ubuntu/${target}/bin/" >> .bashrc
