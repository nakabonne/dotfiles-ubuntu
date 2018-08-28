#!/bin/bash

# apt
apt=("make" "git")
if type "apt"; then
  echo "$(tput setaf 2)Already installed apt ✔︎$(tput sgr0)"
else
  echo "apt does not exist..."
fi
if type "apt"; then
  for b in ${apt[@]}; do
    apt install $b 
  done
fi
