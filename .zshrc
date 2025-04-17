# Use XDG dirs for completion and history files
[ -d "$XDG_STATE_HOME"/zsh ] || mkdir -p "$XDG_STATE_HOME"/zsh
HISTFILE="$XDG_STATE_HOME"/zsh/history
[ -d "$XDG_CACHE_HOME"/zsh ] || mkdir -p "$XDG_CACHE_HOME"/zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME"/zsh/zcompcache
autoload -Uz compinit
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-$ZSH_VERSION

#DO NOT TOUCH ABOVE LINE
#------------------------------------------

source /usr/share/doc/git-extras/git-extras-completion.zsh
# source <(arara --generate-completion zsh)

source "$XDG_CONFIG_HOME"/sh/env.sh
export GEM_HOME="$(gem env user_gemhome)"

# Path
typeset -U path PATH
path=(~/.local/bin $path)
path+=("$GEM_HOME"/bin)
path+=("$GOPATH"/bin)
export PATH

# Keybindings
bindkey -v
bindkey -s ^f '^utmux-sessionizer^M'
bindkey -s ^g '^uscreensaver^M'

# aliases
source "$XDG_CONFIG_HOME"/sh/alias.sh
alias vi=nvim
alias emulator="emulator -no-metrics"

## Darkmode
export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark
#
# Load nvm
source /usr/share/nvm/init-nvm.sh

# Load starship
eval "$(starship init zsh)"

if [[ -n "$(command -v tmux)" ]] && [[ -z "${TMUX}" ]] && [[ -n "${WAYLAND_DISPLAY}" ]]; then
    exec tmux new-session -A -c ${HOME} -s ${USER}
fi
