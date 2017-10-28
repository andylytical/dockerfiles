#!/bin/bash

set -x

USER="andylytical"
IMAGE="ncsa-vsl-reporter"
TAG=$( date "+%Y%m%d" )
SRC="src"


# Ensure latest code
[[ -d $SRC ]] || { echo "Missing source dir"; exit 99
}
(
cd $SRC
git pull
git submodule update --init
)

# BUILD IMAGE
docker build . -t $IMAGE:$TAG
docker tag $IMAGE:$TAG $USER/$IMAGE:$TAG
#docker push $USER/$IMAGE:$TAG
