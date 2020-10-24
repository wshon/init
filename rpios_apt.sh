#!/bin/bash

mv /etc/apt/sources.list /etc/apt/sources.list.$(date +%s)
cat >> /etc/apt/sources.list <<EOF
deb http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi
deb-src http://mirrors.tuna.tsinghua.edu.cn/raspbian/raspbian/ buster main non-free contrib rpi
EOF

mv /etc/apt/sources.list.d/raspi.list /etc/apt/sources.list.d/raspi.list.$(date +%s)
cat >> /etc/apt/sources.list.d/raspi.list <<EOF
deb http://mirrors.tuna.tsinghua.edu.cn/raspberrypi/ buster main ui
EOF

apt update
