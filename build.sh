#!/bin/sh

# get base directory
basedir=`pwd`

################################################################################
# Build external dependencies
################################################################################

# Paho-Mqtt
cd paho_mqtt
mkdir -p build && cd build
cmake ..
make
sudo make install
cd $basedir

################################################################################
# Build TGP components
################################################################################
components="varserver libtjson libvaraction varcreate execvars filevars
procmon"

for component in $components
do
    cd $component
    ./build.sh
    cd $basedir
done


