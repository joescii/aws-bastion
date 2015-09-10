#!/bin/bash

# Exit if anything fails
set -e

root="$( cd "$(dirname "$0")" ; pwd )"

. ${root}/env.sh
${root}/build.sh
