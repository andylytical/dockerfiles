# Windows PowerShell

$image_name = "ncsa-vsl-reporter"

# BUILD IMAGE
docker build . -t $image_name

# RUN IMAGE IN CONTAINER
docker run --rm -it $image_name
