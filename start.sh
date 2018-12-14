#!/usr/bin/env bash

docker run --name hello-flask -d -p 5000:5000 --rm hello-flask:latest
# docker run --name hello-flask -it -p 5000:5000 --rm hello-flask:latest
