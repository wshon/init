#!/bin/bash
echo "set debian source"
wget -O- https://github.com/muumlover/Tool/raw/master/debian_source.sh --no-check-certificate | bash

apt update
apt install aptitude ca-certificates git python-pip sshfs subversion vim -y

echo "set pip source"
wget -O- https://github.com/muumlover/Tool/raw/master/pip_source.sh | bash

echo "set vim config"
wget -O- https://github.com/muumlover/Tool/raw/master/vim_config.sh | bash

echo "link svn"
mkdir /home/user
ln -s /mnt/d/SVN/dir /home/user/dir

echo "set remote rsa"
ssh-keygen -t rsa
cat .ssh/id_rsa.pub | ssh root@127.0.0.1 "cat - >>.ssh/authorized_keys"

echo "set sshfs remote /app"
mkdir /app
sshfs -o allow_other root@127.0.0.1:/app /app
