#!/bin/bash

sed -i "/Port /cPort 2233" /etc/ssh/sshd_config
systemctl restart sshd

if grep -Eqii "CentOS" /etc/issue || grep -Eq "CentOS" /etc/*-release; then
    firewall-cmd --zone=public --add-port=2233/tcp --permanent
    firewall-cmd --reload
    semanage port -a -t ssh_port_t -p tcp 2233
fi
