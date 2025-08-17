alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim=nvim
dotfiles() {
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME "$@"
}
# alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias grep='rg'
