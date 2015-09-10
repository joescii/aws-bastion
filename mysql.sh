#!/bin/bash

set -e

cd /home/ubuntu
wget http://downloads.mysql.com/archives/get/file/mysql-5.6.19-linux-glibc2.5-x86_64.tar.gz
gunzip -cdfv mysql-5.6.19-linux-glibc2.5-x86_64.tar.gz | tar -vx 
rm mysql-5.6.19-linux-glibc2.5-x86_64.tar.gz
echo "PATH=$PATH:/home/ubuntu/mysql-5.6.19-linux-glibc2.5-x86_64/bin/" >> .profile
