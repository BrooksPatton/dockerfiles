# How to use this image

## Creating the image

```
docker build -t <username>/<image name>:<tag>
```

## Creating a container

```
docker run --name <container name> \
  --net="<docker network>"  \
  -v $(pwd):/data \
  -it -P \
  <image name>:<image tag>
```

### How it works

**--name <container name>**: What is the name that the container will have. If none is given, a random name will be assigned.

**--net="<docker network>"**: What network should the container be created into? By default the container will be added into a bridge network created by docker.

**-v $(pwd):/data**: Mount the current working directory on your computer into the location /data in the container. This mount point will be writeable, so be careful what you do while inside the container.

**-it**: Sets interactive mode so that you can run commands inside the container as if you are connected into another computer via ssh.

**-P**: Maps a random port on the docker-machine to port 3000 in the container.

**<image name>:<image tag>**: Which image and tag are you going to use to create this container? Use the same name and tag that you used when creating the image.
