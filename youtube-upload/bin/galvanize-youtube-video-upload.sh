#!/bin/bash

# Uploads a video to Youtube using a docker container that has everything you need. By default this will mount the desktop to the container so make sure that all of the videos that you want to upload are there.

docker run -it --rm -v "$HOME"/Desktop:/data -e GALVANIZE_VIDEO=true youtubeupload:latest
