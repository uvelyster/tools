#!/bin/bash

sudo yum install epel-release -y
sudo yum install ansible -y

ssh-keygen -N '' -f ~/.ssh/id_rsa

sudo cat <<EOF > /etc/sudoers.d/ansible-user
ansible_user ALL=(ALL) NOPASSWD:ALL
EOF

# install docker collection
# ansible-galaxy collection install community.docker

# default setting is 'StrictHostKeyChecking ask'
# 
# echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config
# ssh-copy-id -o StrictHostKeyChecking=no [ansible-user@NODE]

