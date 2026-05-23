export EDITOR=nvim
export SUDO_EDITOR="$EDITOR"
export LC_COLLATE="C.UTF-8"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/gnupg/S.gpg-agent.ssh"
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export MANPAGER='nvim +Man!'

# XDG dir fixes
# config
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"
export ANDROID_USER_HOME="$XDG_CONFIG_HOME/android"
export BUNDLE_USER_CONFIG=$XDG_CONFIG_HOME/bundle/config
export FFMPEG_DATADIR="$XDG_CONFIG_HOME"/ffmpeg
export KUBECONFIG="$XDG_CONFIG_HOME/kube/config"
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/rc
# data
export NVM_DIR="$XDG_DATA_HOME"/nvm
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export BUNDLE_USER_PLUGIN=$XDG_DATA_HOME/bundle
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export IPFS_PATH="$XDG_DATA_HOME"/ipfs
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME/renpy"
export LEDGER_FILE="$XDG_DATA_HOME"/hledger/hledger.journal
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
# cache
export GOMODCACHE="$XDG_CACHE_HOME"/go/mod
export BUNDLE_USER_CACHE=$XDG_CACHE_HOME/bundle
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"


if command -v gem &> /dev/null; then
    export GEM_HOME="$(gem env user_gemhome)"
fi

typeset -U path
append_path () {
    if [[ -n "$1" && -d "$1" ]]; then
        path+=("$1")
    fi
}
prepend_path () {
    if [[ -n "$1" && -d "$1" ]]; then
        path=("$1" $path)
    fi
}
prepend_path "${PNPM_HOME:+$PNPM_HOME}"
prepend_path "${GEM_HOME:+$GEM_HOME/bin}"
prepend_path "${GOPATH:+$GOPATH/bin}"
prepend_path "${CARGO_HOME:+$CARGO_HOME/bin}"
prepend_path "$HOME/.local/bin"
export PATH


startw () {
    if uwsm check may-start; then
        exec uwsm start -- hyprland.desktop
    fi
}
