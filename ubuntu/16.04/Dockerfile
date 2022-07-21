FROM ubuntu:16.04

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

RUN git clone --branch 20200410_git https://github.com/RainerKuemmerle/g2o.git && \
    cd g2o && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr g2o

RUN apt-get update && \
    apt-get install -y \
    libarmadillo-dev libceres-dev libcgal-dev libgoogle-glog-dev \
    libgflags-dev libglfw3-dev libnlopt-dev libompl-dev libomp-dev \
    libpcl-dev && \ 
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/laurentkneip/opengv.git && \
    cd opengv && mkdir build && cd build && cmake ../ && make install && \
    cd ../.. && rm -fr opengv

# Requires eigen 3.3.x and ceres-solver 2.0.0
#
# RUN git clone --branch v0.9.5 https://github.com/strasdat/Sophus.git && \
#     cd Sophus && mkdir build && cd build && cmake ../ && make install && \
#     cd ../.. && rm -fr Sophus

RUN cd /usr/local/include && \
    wget https://github.com/cnr-isti-vclab/vcglib/archive/refs/tags/2022.02.tar.gz && \
    tar xf 2022.02.tar.gz && rm 2022.02.tar.gz && \
    cd /usr/local/include && ln -s vcglib-2022.02 vcg

RUN apt-get update && \
    apt-get install -y \
    software-properties-common && \
    rm -rf /var/lib/apt/lists/*

RUN apt-add-repository ppa:dartsim/ppa && \
    apt-get update && \
    apt-get install -y \
    libdart6-all-dev && \
    rm -rf /var/lib/apt/lists/*

# RUN apt-get update && \
#     apt-get install -y \
#     ninja-build && \
#     rm -rf /var/lib/apt/lists/*

RUN git clone --branch v0.6 https://github.com/stevenlovegrove/Pangolin.git && \
    cd Pangolin && mkdir build && cd build && cmake ../ && make -j8 install && \
    cd ../.. && rm -fr Pangolin

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# RUN python3 -m pip install --upgrade pip

### PyBullet

# RUN pip3 install pybullet==1.3.9

### MuJoCo requires Python>=3.7

# RUN apt-add-repository ppa:deadsnakes/ppa && \
#     apt-get update && \
#     apt-get install -y \
#    python3.7 && \
#    rm -rf /var/lib/apt/lists/*

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     python3-setuptools \
#     && rm -rf /var/lib/apt/lists/*

# RUN python3.7 -m pip install mujoco==2.1.2

### Gym

# RUN python3.7 -m pip install gym

# Requires OpenCV 4
#
# RUN git clone --branch v1.1-nonfree https://github.com/dorian3d/DBoW2.git && \
#     cd DBoW2 && mkdir build && cd build && cmake ../ && make install && \
#     cd ../.. && rm -fr DBoW2

