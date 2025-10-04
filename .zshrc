# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/history
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache-$ZSH_VERSION
[ -d "$XDG_DATA_HOME"/zsh/site-functions ] || mkdir -p "$XDG_DATA_HOME"/zsh/site-functions
typeset -U fpath
fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION
#DO NOT TOUCH ABOVE LINE
#-----------------------------------------------------------------

# completion
source /usr/share/doc/git-extras/git-extras-completion.zsh
# source <(arara --generate-completion zsh)

source "$XDG_CONFIG_HOME"/sh/env.sh
export GEM_HOME="$(gem env user_gemhome)"

# Path
typeset -U path PATH
path=($HOME/.local/bin $path)
path+=("$CARGO_HOME"/bin)
path+=("$GOPATH"/bin)
path+=("$GEM_HOME"/bin)
export PATH

# Keybindings
bindkey -v
bindkey -s ^f "^utmux-sessionizer^m"

# aliases
source "$XDG_CONFIG_HOME"/sh/alias.sh
alias vi=nvim
alias emulator="emulator -no-metrics"

# Load nvm
source /usr/share/nvm/init-nvm.sh

# Load starship
eval "$(starship init zsh)"

startw () {
    if uwsm check may-start && uwsm select; then
        exec uwsm start default
    fi
}

eval "$(direnv hook zsh)"
