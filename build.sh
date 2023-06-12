#!/bin/sh

# get base directory
basedir=`pwd`

################################################################################
# Build TGP components
################################################################################
components="varserver libtjson libvaraction libiotclient libluavars varcreate
execvars filevars procmon mqttvars actions ads7830 fcgi_vars fcgi_test gpioctrl
iothub iotexec iotsend lcd1602 loadconfig mqttvars neurio procmon statemachine
tcc "

for component in $components
do
    cd $component
    ./build.sh
    cd $basedir
done


