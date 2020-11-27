#!/bin/bash

cp /etc/apt/sources.list /etc/apt/sources.list.$(date +%s).bak
cp /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.$(date +%s).bak

sed -i "s|http://raspbian.raspberrypi.org/raspbian/|https://mirrors.sjtug.sjtu.edu.cn/raspbian/raspbian/|g" /etc/apt/sources.list
sed -i "s|http://deb.debian.org/debian|https://mirrors.sjtug.sjtu.edu.cn/debian|g" /etc/apt/sources.list
sed -i "s|http://archive.raspberrypi.org/debian/|https://mirrors.sjtug.sjtu.edu.cn/raspberrypi/debian/|g" /etc/apt/sources.list.d/raspi.list

apt update
