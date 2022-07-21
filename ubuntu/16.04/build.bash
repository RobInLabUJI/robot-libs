#!/bin/bash

docker build -t robinlab/robot-libs:16.04 -f Dockerfile .

docker build -t robinlab/robot-libs-ros:16.04 -f Dockerfile-ros .

docker build -t robinlab/robot-libs-ros-cuda:16.04 -f Dockerfile-ros-cuda .

docker build -t robinlab/robot-libs-ros-tensorflow:16.04 -f Dockerfile-ros-tensorflow .

docker build -t robinlab/robot-libs-ros-torch:16.04 -f Dockerfile-ros-torch .
