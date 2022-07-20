FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -y \
    libassimp-dev libboost-all-dev libccd-dev libegl1-mesa-dev libeigen3-dev \
    libfcl-dev libgl1-mesa-dev libglew-dev libopencv-dev libwayland-dev \
    libxkbcommon-dev wayland-protocols && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y \
    cmake build-essential pkg-config git wget && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/RainerKuemmerle/g2o.git && \
    cd g2o && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr g2o

RUN apt-get update && \
    apt-get install -y \
    libarmadillo-dev libceres-dev libcgal-dev libgoogle-glog-dev \
    libgflags-dev libglfw3-dev libnlopt-dev libompl-dev libomp-dev \
    libpcl-dev && \ 
    rm -rf /var/lib/apt/lists/*

