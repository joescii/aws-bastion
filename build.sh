#!/bin/bash

# Assumes that packer is on the PATH

# Exit if anything fails
set -e

# Check that all of our vars are defined
: ${AWS_ACCESS_KEY_ID:?"Must supply AWS_ACCESS_KEY_ID environment variable"}
: ${AWS_SECRET_ACCESS_KEY:?"Must supply AWS_SECRET_ACCESS_KEY environment variable"}

# Create a timestamp for uniquefying stuff
timestamp=`date +"%Y%m%d%H%M%S"`

packer build -var timestamp=${timestamp} ./packer.json
