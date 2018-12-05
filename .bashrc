alias a='alias'
alias c='clear'
alias d='cd ~/dotfiles && pwd'

alias ..='cd .. && pwd'
alias ...='cd .. && cd .. pwd'
alias ....='cd .. && cd .. && cd .. pwd'

alias pygrep='ag --python'

function cd {
        builtin cd "$@" && ls -alF
}

export PATH=$PATH:~/dotfiles/bin
