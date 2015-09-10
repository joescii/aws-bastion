#!/bin/bash

# Exit if anything fails
set -e

mkdir tools
pushd tools

append=""

# Install packer
mkdir packer
cd packer
wget https://dl.bintray.com/mitchellh/packer/packer_0.8.6_linux_amd64.zip
unzip packer_0.8.6_linux_amd64.zip
append="${append}:${PWD}"
cd ..

export PATH="${PATH}${append}"

popd
