#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
sudo cp -r $script_dir/icons/* /usr/share/wlogout/icons/
sudo cp -r $script_dir/icons/* /usr/local/share/wlogout/icons/
