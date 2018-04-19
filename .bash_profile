if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi

export PATH=/usr/local/bin:$PATH

# go_lang
PATH="/usr/local/go/bin:$PATH"
export PATH
PATH="$HOME/go/bin:$PATH"
export PATH
GOPATH="$HOME/go"
export GOPATH

# python
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ruby
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# neovim
export XDG_CONFIG_HOME="$HOME/.config"
export ANYENV_ROOT="/Users/nakabo/.anyenv"
export PATH=$PATH:"/Users/nakabo/.anyenv/bin"
eval "$(anyenv init -)"
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# openssl
export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$LD_LIBRARY_PATH

# GCP
export CLOUDSDK_PYTHON=$(which python2)
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# brew caskの保存先
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
