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

RUN git clone https://github.com/dorian3d/DBoW2.git && \
    cd DBoW2 && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr DBoW2

RUN git clone https://github.com/laurentkneip/opengv.git && \
    cd opengv && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr opengv

RUN git clone https://github.com/strasdat/Sophus.git && \
    cd Sophus && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr Sophus

RUN cd /usr/local/include && \
    wget https://github.com/cnr-isti-vclab/vcglib/archive/refs/tags/2022.02.tar.gz && \
    tar xf 2022.02.tar.gz && rm 2022.02.tar.gz && \
    cd /usr/local/include && ln -s vcglib-2022.02 vcg

RUN apt-get update && \
    apt-get install -y \
    libdart-all-dev && \
    rm -rf /var/lib/apt/lists/*

RUN apt-get update && \
    apt-get install -y \
    ninja-build && \
    rm -rf /var/lib/apt/lists/*

RUN git clone --recursive https://github.com/stevenlovegrove/Pangolin.git && \
    cd Pangolin && cmake -B build -GNinja && cmake --build build && \
    cmake --install build && cd .. && rm -fr Pangolin

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

### PyBullet

RUN pip3 install pybullet==3.2.5

### MuJoCo

RUN pip3 install mujoco==2.2.1

### Gym

RUN pip3 install gym==0.25.0

