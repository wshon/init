#!/bin/bash

apt update && apt install -y netselect-apt
cd /etc/apt
netselect-apt
cd -
apt update
