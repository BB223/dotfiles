# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/history
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

#DO NOT TOUCH ABOVE LINE
#-----------------------------------------------------------------

source /usr/share/doc/git-extras/git-extras-completion.zsh
# source <(arara --generate-completion zsh)

source "$XDG_CONFIG_HOME"/sh/env.sh
export GEM_HOME="$(gem env user_gemhome)"

# Path
typeset -U path PATH
path=($HOME/.local/bin $path)
path+=("$GEM_HOME"/bin)
path+=("$GOPATH"/bin)
export PATH

# Keybindings
bindkey -v
bindkey -s ^f "^utmux-sessionizer^m"

# aliases
source "$XDG_CONFIG_HOME"/sh/alias.sh
alias vi=nvim
alias emulator="emulator -no-metrics"
notify-send() { wsl-notify-send.exe --category $WSL_DISTRO_NAME "${@}"; }

# Load nvm
source /usr/share/nvm/init-nvm.sh

# Load starship
eval "$(starship init zsh)"

if [[ -z "$TMUX" ]]; then
    systemctl --user import-environment PATH IPFS_PATH
fi
