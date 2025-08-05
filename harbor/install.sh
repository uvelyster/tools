#!/bin/bash

mkdir /data

openssl \
req -newkey rsa:4096 -nodes -sha256 -x509 \
-days 365 -keyout /data/myregistry.com.key -out /data/myregistry.com.crt \
-subj '/CN=myregistry.com' \
-addext "subjectAltName = DNS:myregistry.com"

dnf install -y wget

wget https://github.com/goharbor/harbor/releases/download/v2.10.0/harbor-offline-installer-v2.10.0.tgz
tar xzvf harbor-offline-installer-v2.10.0.tgz

cp harbor.yml harbor/
cd harbor/
./install.sh  --with-trivy
