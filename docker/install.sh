#!/bin/bash

# Rocky9
curl -fsSL https://download.docker.com/linux/centos/docker-ce.repo \
 -o /etc/yum.repos.d/docker-ce.repo

yum install -y docker-ce
systemctl enable --now docker

# enable remote api 
sed -i 's/fd:\/\/ /fd:\/\/ -H tcp:\/\/0.0.0.0:2375 /g' /usr/lib/systemd/system/docker.service
systemctl daemon-reload ; systemctl restart docker