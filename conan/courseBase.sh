#!/bin/bash

mkdir ~/helloworld
mkdir ~/helloworld/build
mkdir ~/helloworld/source
cd ~/helloworld

echo "done" >> /root/katacoda-finished

yes | pip install conan
apt-get update
apt-get -y install cmake

echo "done" >> /root/katacoda-background-finished