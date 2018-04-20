# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then source "$HOME/google-cloud-sdk/path.bash.inc"; fi

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

# Hook for desk activation
[ -n "$DESK_ENV" ] && source "$DESK_ENV" || true
