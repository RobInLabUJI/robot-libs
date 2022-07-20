#!/bin/bash

docker build -t robinlab/robot-libs:20.04 .

docker build -t robinlab/robot-libs-ros:20.04 -f Dockerfile-ros .
