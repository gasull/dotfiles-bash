# Like in vim-fugitive
alias :Gcommit='git commit'
alias :Gstatus='git status'
alias :Gw='git add'

# Use the best code searching tool money can buy
if [ -x /usr/bin/ag ] ; then
    alias ack='ag'
    alias ack-grep='ag'
    alias egrep='ag'
else
    if [ -x /usr/bin/ack-grep ] ; then
        alias ag='ack-grep'
        alias egrep='ack-grep'
        # Old systems don't have ack
        alias ack='ack-grep'
    else
        alias ag='egrep'
        alias ack='egrep'
        alias ack-grep='egrep'
    fi
fi

alias cd..='cd ..'
alias lla='ls -la'
# Makes Midnight Commander even faster
alias mc='mc -s'
alias ooffice='libreoffice'
# Low volume to play music on top
alias pinknoise='play -n synth 1440:00 pinknoise vol 0.01'
alias psg='ps aux | grep'
# Works as the old MS-DOS tree command
alias tree='tree -d'
alias xv='geeqie'
