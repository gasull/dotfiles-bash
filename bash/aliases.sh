# Like in vim-fugitive
alias Gcommit='git commit'
alias Gdiff='git diff'
alias Gstatus='git status'
alias Gw='git add'

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
alias deltree='rm -r'
alias lla='ls -la'
alias md='mkdir'
nd() {
    mkdir $@; cd $1;
}
alias ooffice='libreoffice'
# Low volume to play music on top
alias pinknoise='play -n synth 1440:00 pinknoise vol 0.05'
alias psg='ps aux | grep'
alias rmtree='rm -r'

#NB: http://lcamtuf.blogspot.com/2014/10/psa-dont-run-strings-on-untrusted-files.html
alias strings='strings -a'

tmosh() {
    mosh $@ -- tmux attach -d
}
# Works like the old MS-DOS tree command
alias tree='tree -d'
alias xv='geeqie'
