if [ -f ~/.bashrc_local ] ; then
  . ~/.bashrc_local
fi

# enhancd
source $HOME/.ghq/github.com/b4b4r07/enhancd/init.sh
ENHANCD_FILTER=fzf; export ENHANCD_FILTER

# direnv
eval "$(direnv hook bash)"

# prompt 
PS1="\[\e[226m\e[32m\][\u: \W ]\[\e[0m\]\n\\$ "

# alias
alias vi='nvim'
alias g='git'
alias ls='ls -CFG'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# vi mode
#set -o vi
#bind '"jj":vi-movement-mode'

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
