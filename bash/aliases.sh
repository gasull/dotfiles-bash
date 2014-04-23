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

# Like in vim-fugitive
alias gcommit='git commit'
alias gstatus='git status'
alias gw='git add'

alias lla='ls -la'
alias md='mkdir'
nd() {
    mkdir $@; cd $1;
}
alias ooffice='libreoffice'
# Low volume to play music on top
alias pinknoise='play -n synth 1440:00 pinknoise vol 0.04'
alias psg='ps aux | grep'
# Works like the old MS-DOS tree command
alias tree='tree -d'
alias xv='geeqie'
