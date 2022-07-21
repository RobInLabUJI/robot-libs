#!/bin/bash

docker build -t robinlab/robot-libs:18.04 -f Dockerfile .

docker build -t robinlab/robot-libs-ros:18.04 -f Dockerfile-ros .

docker build -t robinlab/robot-libs-ros-cuda:18.04 -f Dockerfile-ros-cuda .

docker build -t robinlab/robot-libs-ros-tensorflow:18.04 -f Dockerfile-ros-tensorflow .

docker build -t robinlab/robot-libs-ros-torch:18.04 -f Dockerfile-ros-torch .
