#!/bin/bash

[[ $# -eq 1 ]] && container_name="$1"

image_name=c7local

homedir=$HOME
# Check if we're running on windows (via WSL)
windows_home="/mnt/c/Users/$USER"
[[ -d "$windows_home" ]] && homedir="C:\\Users\\$USER"

# Build Image
docker build . -t $image_name

# Run Image
docker run --rm -it \
  --mount type=bind,src=$homedir,dst=/home \
  --net=host \
  ${container_name:+--name "$container_name"} \
  $image_name
