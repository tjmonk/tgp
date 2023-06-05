# tgp
The Gateway Project Manifest

## Overview

The TGP manifest is for use with the git repo project.

## Installation via apt

```
$ sudo apt-get update
$ sudo apt-get install repo
```

## Manual installation (if apt-get does not work)

```
$ export REPO=$(mktemp /tmp/repo.XXXXXXXXX)
$ curl -o ${REPO} https://storage.googleapis.com/git-repo-downloads/repo
$ gpg --recv-key 8BB9AD793E8E6153AF0F9A4416530D5E920F5C65
$ curl -s https://storage.googleapis.com/git-repo-downloads/repo.asc | gpg --verify - ${REPO} && install -m 755 ${REPO} ~/bin/repo
```

## Check repo version

```
$ repo version
```

## Set up a working directory

Use whatever name you want for your working directory, but in this case
we are using 'tgp' for "The Gateway Project"

```
$ mkdir ~/tgp && cd ~/tgp
```

## Initialization

```
$ repo init -u https://github.com/tjmonk/tgp -b main
```

## Sync (download) Components

```
$ repo sync
```

## Build and Install everything

```
$ ./tgp/build.sh
```

