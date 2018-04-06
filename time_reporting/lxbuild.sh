#!/bin/bash

set -x

USER="andylytical"
IMAGE="ncsa-time-reporting"
TAG=$( date "+%Y%m%d" )
SRC="src"


# Ensure latest code
[[ -d $SRC ]] || { echo "Missing source dir"; exit 99
}
(
cd $SRC
git pull
git submodule update --recursive --remote
)

# BUILD IMAGE
docker build . -t $IMAGE:$TAG
docker tag $IMAGE:$TAG $USER/$IMAGE:$TAG
docker push $USER/$IMAGE:$TAG
