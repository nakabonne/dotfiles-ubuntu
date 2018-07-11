if [ -f ~/.bashrc ] ; then
  . ~/.bashrc
fi
# 端末ごとの設定
if [ -f ~/.bash_local ] ; then
  . ~/.bash_local
fi

export PATH=/usr/local/bin:$PATH
export EDITOR=nvim

# go_lang
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"

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
export ANYENV_ROOT="$HOME/.anyenv"
export PATH=$PATH:"$HOME/.anyenv/bin"
eval "$(anyenv init -)"

# openssl
export PATH=/usr/local/opt/openssl/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/opt/openssl/lib:$LD_LIBRARY_PATH
export CPATH=/usr/local/opt/openssl/include:$LD_LIBRARY_PATH

# GCP
export CLOUDSDK_PYTHON=$(which python2)
export PATH=/usr/local/opt/python/libexec/bin:$PATH

# brew caskの保存先
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# ls
export LSCOLORS=xbfxcxdxbxegedabagacad
