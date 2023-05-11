#!/usr/bin/env bash

BASEDIR=${PWD%/install}
source ${BASEDIR}/functions/install_utils.sh

msg_install "TrueScript"
brew install node npm
npm install typescript -g
npm install yarn

msg_done "TrueScript"
