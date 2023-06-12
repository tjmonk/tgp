# tgp
The Gateway Project Manifest

## Overview

The TGP manifest is for use with the git repo project.

## Installation via apt

```
sudo apt-get update
sudo apt-get install repo
```

## Manual installation (if apt-get does not work)

```
export REPO=$(mktemp /tmp/repo.XXXXXXXXX)
curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo
gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65
curl -s https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - ${REPO} && install -m 755 ${REPO} ~/bin/repo
```

## Check repo version

```
repo version
```

## Set up a working directory

Use whatever name you want for your working directory, but in this case
we are using 'tgp' for "The Gateway Project"

```
mkdir ~/tgp && cd ~/tgp
```

## Initialization

```
repo init -u https://github.com/tjmonk/tgp -b main
```

## Sync (download) Components

```
repo sync -c -j8
```

## Build and Install everything

```
./tgp/build.sh
```

## The Gateway Project Components

| Component | Description |
|---|---|
| [actions](https://github.com/tjmonk/actions) | Action Scripting Engine with VarServer Interface |
| [ads7830](https://github.com/tjmonk/ads7830) | ADS7830 I2C 8-bit Analog to Digital Inputs |
| [execvars](https://github.com/tjmonk/execvars) | Associate executable commands with VarServer Variables |
| [fcgi_vars](https://github.com/tjmonk/fcgi_vars) | Fast CGI interface to VarServer Variables |
| [fcgi_test](https://github.com/tjmonk/fcgi_test) | Fast CGI Test interface |
| [filevars](https://github.com/tjmonk/filevars) | Associate file content with VarServer Variables |
| [gpioctrl](https://github.com/tjmonk/gpioctrl) | Associate GPIO pins with VarServer Variables |
| [iotexec](https://github.com/tjmonk/iotexec) | Remote IOT System Calls for Azure IOT Hub |
| [iothub](https://github.com/tjmonk/iothub) | Azure IOT Hub Interface |
| [iotsend](https://github.com/tjmonk/iotsend) | Send messages to Azure IOT Hub |
| [lcd1602](https://github.com/tjmonk/lcd1602) | LCD 16x2 Alphanumeric Display Interface for VarServer |
| [libiotclient](https://github.com/tjmonk/libiotclient) | Azure IOT Hub Client Library |
| [libluavars](https://github.com/tjmonk/libluavars) | Lua Interface for VarServer variables and events |
| [libtjson](https://github.com/tjmonk/libtjson) | JSON Parser using flex/bison |
| [libvaraction](https://github.com/tjmonk/libvaraction) | VarServer Actions Library for building actions parse trees |
| [loadconfig](https://github.com/tjmonk/loadconfig) | Configuration Management Utility for VarServer |
| [mqttvars](https://github.com/tjmonk/mqttvars) | VarServer MQTT Interface |
| [neurio](https://github.com/tjmonk/neurio) | Neurio Home Energy Monitor VarServer Interface |
| [procmon](https://github.com/tjmonk/procmon) | Process Monitor Service |
| [statemachine](https://github.com/tjmonk/statemachine) | Finite State Machine engine with VarServer Interface |
| [tcc](https://github.com/tjmonk/tcc) | C language Scripting and Virtual Machine with VarServer Interface |
| [tgp](https://github.com/tjmonk/tgp) | The Gateway Project (repo manifest) |
| [varcreate](https://github.com/tjmonk/varcreate) | Create Variables for the VarServer from a JSON file |
| [varserver](https://github.com/tjmonk/varserver) | Pub/Sub Key Value Store |


