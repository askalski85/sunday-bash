#!/bin/bash

# HISTORY SETTINGS
# $HISTCMD       $HISTCONTROL   $HISTFILE      $HISTFILESIZE  $HISTSIZE
export HISTCONTROL=ignoreboth
export HISTFILESIZE=10000
export HISTSIZE=1000
export BASH_SILENCE_DEPRECATION_WARNING=1


function save_commands() {
  commands_file=${1:-"commands"}
  history -w .htmp ; cat ${commands_file} >> .htmp
  awk '{$1=$1};1' .htmp | grep -ve "^[ ]*[vim|ls|tree|ps|whereis|git|cd|cat|brew]" | grep -ve "help" | grep -ve "version" | sort | uniq > ${commands_file}
}

export PS1="\w\$(__git_ps1) \$ "
