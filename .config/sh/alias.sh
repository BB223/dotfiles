alias ls='ls --color=auto -F'
alias grep='grep --color=auto'
alias vim=nvim
dotfiles() {
    /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME "$@"
}
alias ll='ls -al'
alias la='ls -A'
alias grep='rg'
