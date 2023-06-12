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
| actions | action scripts |
| ads7830 | ADS7830 I2C 8-bit Analog to Digital Inputs |
| execvars | Associate executable commands with VarServer Variables |
| fcgi_vars | Fast CGI interface to VarServer Variables |
| filevars | Associate file content with VarServer Variables |
| gpioctrl | Associate GPIO pins with VarServer Variables |
| iotexec | Remote IOT System Calls for Azure IOT Hub |
| iothub | Azure IOT Hub Interface |
| iotsend | Send messages to Azure IOT Hub |
| lcd1602 | LCD 16x2 Alphanumeric Display Interface for VarServer |
| libiotclient | Azure IOT Hub Client Library |
| libluavars | Lua Interface for VarServer variables and events |
| libtjson | JSON Parser using flex/bison |
| libvaraction | VarServer Actions Library for building actions parse trees |
| loadconfig | Configuration Management Utility for VarServer |
| mqttvars | VarServer MQTT Interface |
| neurio | Neurio Home Energy Monitor VarServer Interface |
| procmon | Process Monitor Service |
| statemachine | Finite State Machine engine with VarServer Interface |
| tcc | C language Scripting with VarServer Interface |
| tgp | The Gateway Project (repo manifest) |
| varcreate | Create Variables for the VarServer from a JSON file |
| varserver | Pub/Sub Key Value Store |


