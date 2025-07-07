#!/bin/bash

curl -L https://code-server.dev/install.sh | sh 
mkdir -p ~/.config/code-server
cp  config.yaml ~/.config/code-server/config.yaml 

systemctl enable code-server@$USER
systemctl start code-server@$USER
