#!/bin/bash

# brew
brew=("tmux" "ripgrep" "go" "fzf" "neovim" "python3" "rbenv" "ruby-build" "direnv" "desk")
cask=("iterm2")
if type "brew"; then
  echo "$(tput setaf 2)Already installed Homebrew ✔︎$(tput sgr0)"
else
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
if type "brew"; then
  for b in ${brew[@]}; do
    brew install $b 
  done
  for c in ${cask[@]}; do
    brew cask install $c
  done

fi

# git
if type "git"; then
  echo "$(tput setaf 2)Already installed Git ✔︎$(tput sgr0)"
else
  echo "Installing Git..."
  brew install git
fi
if type "git"; then
  git clone https://github.com/riywo/anyenv ~/.anyenv
fi

# go
if type "go"; then
  echo "$(tput setaf 2)Already installed Go ✔︎$(tput sgr0)"
else
  echo "Installing Go..."
  brew install go
fi
if type "go"; then
  go get github.com/motemen/ghq
fi


# ghq
if type "ghq"; then
  echo "$(tput setaf 2)Already installed ghq ✔︎$(tput sgr0)"
else
  echo "Installing ghq..."
  go get github.com/motemen/ghq
fi
if type "ghq"; then
  ghq get https://github.com/b4b4r07/enhancd
fi


# pip3 
if type "pip3"; then
  echo "$(tput setaf 2)Already installed pip3 ✔︎$(tput sgr0)"
else
  echo "Installing pip3..."
  brew install python3
fi
if type "pip3"; then
  pip3 install neovim
  pip3 install virtualenv
fi
