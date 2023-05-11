#!/usr/bin/env bash

BASEDIR=${PWD%/install}
source ${BASEDIR}/functions/install_utils.sh

msg_install "vim"
brew install vim

mkdir -p $HOME/.vim
cp -f ${BASEDIR}/profile/vimrc $HOME/.vim

msg_done "vim"
