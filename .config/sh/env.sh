export EDITOR=nvim
export LC_COLLATE="C.UTF-8"
export GPG_TTY=$(tty)
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# XDG dir fixes
# config
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"
export ANDROID_USER_HOME="$XDG_CONFIG_HOME/.android"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME/bundle/config"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export KUBECONFIG="$XDG_CONFIG_HOME/kube/config"
# data
export NVM_DIR="$XDG_DATA_HOME/nvm"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export GOPATH="$XDG_DATA_HOME/go"
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME/bundle"
export GRADLE_USER_HOME="$XDG_DATA_HOME/gradle"
# cache
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME/bundle"
export KUBECACHEDIR="$XDG_CACHE_HOME/kube"
