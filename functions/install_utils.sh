#!/usr/bin/env bash

set -x
set -e

function msg_install() {
  echo "* Installing $1 ..."
}

function msg_done() {
  echo "+ Installing $1 complete."
}