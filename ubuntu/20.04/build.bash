#!/bin/bash

docker build -t robinlab/robot-libs:20.04 -f Dockerfile .

docker build -t robinlab/robot-libs-ros:20.04 -f Dockerfile-ros .

docker build -t robinlab/robot-libs-ros-cuda:20.04 -f Dockerfile-ros-cuda .

docker build -t robinlab/robot-libs-ros-tensorflow:20.04 -f Dockerfile-ros-tensorflow .

docker build -t robinlab/robot-libs-ros-torch:20.04 -f Dockerfile-ros-torch .
