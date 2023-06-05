#!/bin/sh

components="varserver libtjson libvaraction varcreate execvars filevars
procmon"

for component in $components
do
    cd $component
    ./build.sh
    cd ..
done


