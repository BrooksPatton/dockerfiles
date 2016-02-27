# How to use this image

## Creating the image

```
docker build -t <username>/<image name>:<tag>
```

## Creating a container

```
docker create --name <container name> \
  --net="<docker network>"  \
  <image name>:<image tag>
```

### How it works

**--name <container name>**: What is the name that the container will have. If none is given, a random name will be assigned.

**--net="<docker network>"**: What network should the container be created into? By default the container will be added into a bridge network created by docker.

**<image name>:<image tag>**: Which image and tag are you going to use to create this container? Use the same name and tag that you used when creating the image.
