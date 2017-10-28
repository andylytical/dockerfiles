#!/bin/bash

image_name=py3dev

homedir=$HOME
# Check if we're running on windows
windows_home="/mnt/j/$USER"
[[ -d "/mnt/j/$USER" ]] && homedir="J:\\$USER"

# Build Image
docker build . -t $image_name

# Run Image
docker run --rm -it --mount type=bind,src=$homedir,dst=/home/$USER $image_name
