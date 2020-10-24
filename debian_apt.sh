#!/bin/bash
# http://mirrors.ustc.edu.cn/help/debian.html

cp /etc/apt/sources.list /etc/apt/sources.list.$(date +%s)
sed -i 's/deb.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sed -i 's/ftp.debian.org/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
sed -i 's|security.debian.org/debian-security|mirrors.ustc.edu.cn/debian-security|g' /etc/apt/sources.list
apt update
