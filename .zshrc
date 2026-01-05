# Use XDG dirs for completion and history files
[[ -d "$XDG_STATE_HOME/zsh" ]] || mkdir -p "$XDG_STATE_HOME/zsh"
HISTFILE="$XDG_STATE_HOME/zsh/history"
[[ -d "$XDG_CACHE_HOME/zsh" ]] || mkdir -p "$XDG_CACHE_HOME/zsh"
zstyle ':completion:*' use-cache on
[[ -d "$XDG_DATA_HOME/zsh/site-functions" ]] || mkdir -p "$XDG_DATA_HOME/zsh/site-functions"
typeset -U fpath
fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
#DO NOT TOUCH ABOVE LINE
#-----------------------------------------------------------------

safe_source () {
    if [[ -e "$1" ]]; then
        source "$1"
    fi
}

startw () {
    if uwsm check may-start; then
        exec uwsm start -- hyprland.desktop
    fi
}

append_path () {
    if [[ -n "$1" && -d "$1" ]]; then
        path+=("$1")
    fi
}

# completion
safe_source '/usr/share/doc/git-extras/git-extras-completion.zsh'

safe_source "$XDG_CONFIG_HOME/sh/env.sh"

if command -v gem &> /dev/null; then
    export GEM_HOME="$(gem env user_gemhome)"
fi

# Path
typeset -U path PATH
path=("$HOME/.local/bin" $path)
append_path "${CARGO_HOME:+$CARGO_HOME/bin}"
append_path "${GOPATH:+$GOPATH/bin}"
append_path "${GEM_HOME:+$GEM_HOME/bin}"
export PATH

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

