# Use XDG dirs for completion and history files
[[ -d "$XDG_STATE_HOME/zsh" ]] || mkdir -p "$XDG_STATE_HOME/zsh"
HISTFILE="$XDG_STATE_HOME/zsh/history"
[[ -d "$XDG_DATA_HOME/zsh/site-functions" ]] || mkdir -p "$XDG_DATA_HOME/zsh/site-functions"
typeset -U fpath
fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)
[[ -d "$XDG_CACHE_HOME/zsh" ]] || mkdir -p "$XDG_CACHE_HOME/zsh"
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
#DO NOT TOUCH ABOVE LINE
#-----------------------------------------------------------------

export GPG_TTY=$(tty)

safe_source () {
    if [[ -e "$1" ]]; then
        source "$1"
    fi
}

# completion
safe_source '/usr/share/doc/git-extras/git-extras-completion.zsh'
if command -v dotnet &> /dev/null; then
    eval "$(dotnet completions script zsh)"
fi
# Keybindings
bindkey -v
bindkey -s ^f '^utmux-sessionizer^m'

# aliases
safe_source "$XDG_CONFIG_HOME/sh/alias.sh"

if command -v starship &> /dev/null; then
    eval "$(starship init zsh)"
fi

if command -v mise &> /dev/null; then
    eval "$(mise activate zsh)"
fi
