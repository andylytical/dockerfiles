# Windows PowerShell

$image_name = "py-sql-dev"
$container_name = "py3dev"
$homedir = "J:\aloftus"

# BUILD IMAGE
docker build . -t $image_name

# RUN IMAGE IN CONTAINER
docker run --rm -it --name $container_name --mount type=bind,src=$homedir,dst=/home/aloftus $image_name
