#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
cp -r  $script_dir/icons/* /usr/share/wlogout/icons/
cp -r  $script_dir/icons/* /usr/local/share/wlogout/icons/
