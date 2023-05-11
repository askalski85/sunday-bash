#!/usr/bin/env bash

set -e
set -x

echo "Preparing installation"

install/install-vim.sh
install/install-typescript.sh

echo "Installation complete"
