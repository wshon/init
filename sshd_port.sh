#!/bin/bash

sed -i "/Port /cPort 33322" /etc/ssh/sshd_config
systemctl restart sshd
