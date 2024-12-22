#!/bin/sh

# set base directory
basedir=`pwd`/depends
mkdir -p $basedir

################################################################################
# Install build tools
################################################################################
sudo apt-get update
sudo apt-get install -y \
    cmake \
    build-essential \
    curl \
    libcurl4-openssl-dev \
    libssl-dev \
    uuid-dev \
    ca-certificates \
    gcc \
    make \
    m4 \
    autoconf \
    autoconf-archive \
    automake \
    libtool \
    lighttpd \
    flex \
    bison \
    lua5.4 \
    lua5.4-dev


################################################################################
# Build Paho MQTT library
################################################################################
cd $basedir
git clone https://github.com/eclipse/paho.mqtt.c.git
cd paho.mqtt.c
make
sudo make install

################################################################################
# Build Azure IOT SDK library
################################################################################

# Get and Build the Azure IOT SDK
cd $basedir
git clone https://github.com/Azure/azure-iot-sdk-c
cd azure-iot-sdk-c
git submodule init
git submodule update
mkdir -p cmake && cd cmake
cmake ..
cmake --build .
sudo make install
cd $basedir

################################################################################
# Build fcig2
################################################################################

cd $basedir
git clone https://github.com/FastCGI-Archives/fcgi2
cd fcgi2/
./autogen.sh
./configure
make
sudo make install

################################################################################
# Build libgpiod
################################################################################

# Build the gpiod library
cd $basedir
git clone https://git.kernel.org/pub/scm/libs/libgpiod/libgpiod
cd libgpiod
git checkout v1.6.3
./autogen.sh --enable-tools=yes --prefix=/usr
make
sudo make install

sudo ldconfig




