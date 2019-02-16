#!/bin/bash

mkdir helloworld
mkdir helloworld/build
mkdir helloworld/source

apt-get update
apt-get -y install cmake

echo "done" >> /katacoda-background-finished