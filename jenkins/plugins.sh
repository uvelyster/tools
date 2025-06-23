#!/bin/bash

# Install Plugin 
docker cp plugins.txt jenkins:/var/jenkins_home/ 
docker exec jenkins jenkins-plugin-cli -f /var/jenkins_home/plugins.txt 

# Add Group and docker binary
docker exec -u 0 jenkins groupadd -g 991 docker
docker exec -u 0 jenkins usermod -aG 991 jenkins
docker cp /usr/bin/docker jenkins:/usr/bin/docker

docker restart jenkins