#!/bin/bash

curl -s "https://get.sdkman.io" | bash

dnf install -y zip unzip

sdk install java 24.0.1-graal
sdk install quarkus
sdk install maven



