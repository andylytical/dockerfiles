# Windows PowerShell

$image_name = "py3dev"

# BUILD IMAGE
docker build . -t $image_name

# RUN IMAGE IN CONTAINER
docker run --rm -it --mount type=bind,src=$USERPROFILE,dst=/home $image_name
