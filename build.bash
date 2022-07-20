#!/bin/bash

docker build -t robinlab/robot-libs:20.04 -f Dockerfile .

docker build -t robinlab/robot-libs-ros:20.04 -f Dockerfile-ros .

docker build -t robinlab/robot-libs-ros-ml:20.04 -f Dockerfile-ros-ml .
