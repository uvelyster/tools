#!/bin/bash

docker rm -f jenkins

docker run -d --name jenkins \
--restart always \
--dns 172.16.0.200 \
-p 8080:8080 \
-p 50000:50000 \
-v jenkins_home:/var/jenkins_home \
-v /var/run/docker.sock:/var/run/docker.sock \
quay.io/uvelyster/jenkins
#jenkins/jenkins:lts

