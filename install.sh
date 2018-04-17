#!/bin/bash

# brew
if type "brew"; then
  echo "$(tput setaf 2)Already installed Homebrew ✔︎$(tput sgr0)"
else
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if type "brew"; then
  brew install ripgrep
  brew install go
fi


# go
if type "go"; then
  echo "$(tput setaf 2)Already installed Go ✔︎$(tput sgr0)"
else
  brew install go
fi
if type "go"; then
  go get github.com/motemen/ghq
fi
