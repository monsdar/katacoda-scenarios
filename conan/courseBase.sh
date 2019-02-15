#!/bin/bash

mkdir ~/helloworld
mkdir ~/helloworld/build
mkdir ~/helloworld/source
cd ~/helloworld

yes | pip install conan
apt-get update
apt-get -y install cmake

echo "Everything ready..."