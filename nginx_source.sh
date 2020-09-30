#!/bin/bash

#定义文字颜色
Green="\033[32m"
Red="\033[31m"
Font="\033[0m"

#定义提示信息
Info="${Green}[信息]${Font}"
OK="${Green}[OK]${Font}"
Error="${Red}[错误]${Font}"

source /etc/os-release

VERSION=`echo ${VERSION} | awk -F "[()]" '{print $2}'`

if [[ "${ID}" == "debian" && ${VERSION_ID} -ge 8 ]];then
  if [[ -e /etc/apt/sources.list.d/nginx.list ]]; then
    echo -e "${OK} ${GreenBG} Nginx apt源 已添加 ${Font}"
  else
    echo "deb http://nginx.org/packages/mainline/debian/ ${VERSION} nginx" >> /etc/apt/sources.list.d/nginx.list
    echo "deb-src http://nginx.org/packages/mainline/debian/ ${VERSION} nginx" >> /etc/apt/sources.list.d/nginx.list
    wget -N --no-check-certificate https://nginx.org/keys/nginx_signing.key >/dev/null 2>&1
    apt-key add nginx_signing.key >/dev/null 2>&1
    rm -rf add nginx_signing.key >/dev/null 2>&1
    echo -e "${OK} 添加 Nginx apt源 成功 ${Font}"
  fi
else
  echo -e "${Error} 当前系统为 ${ID} ${VERSION_ID} 不在支持的系统列表内，安装中断 ${Font}"
  exit 1
fi
