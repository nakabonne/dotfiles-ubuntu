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
  brew install fzf
  brew install neovim
  brew install python3
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


# ghq
if type "ghq"; then
  echo "$(tput setaf 2)Already installed ghq ✔︎$(tput sgr0)"
else
  go get github.com/motemen/ghq
fi
if type "ghq"; then
  ghq get https://github.com/b4b4r07/enhancd
fi


# pip3 
if type "pip3"; then
  echo "$(tput setaf 2)Already installed pip3 ✔︎$(tput sgr0)"
else
  brew install python3
fi
if type "pip3"; then
  pip3 install neovim
fi
