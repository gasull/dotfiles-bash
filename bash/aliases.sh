# Like in vim-fugitive
alias gcommit='git commit'
alias gdiff='git diff'
alias gstatus='git status'
alias gw='git add'

alias gst='git status'

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
        alias ag='egrep -r'
        alias ack='egrep -r'
        alias ack-grep='egrep -r'
    fi
fi

cat() {
    source-highlight --out-format=esc -o STDOUT -i "$@" 2> /dev/null || \
        /bin/cat "$@";
}

alias cd..='cd ..'
alias cls=clear
alias cp='cp -i'
alias deltree='rm -r'
if [ -x /usr/bin/colordiff ] ; then
    alias diff='colordiff'
fi
alias ll='ls -lh'
alias lla='ls -lah'

# Colored man pages
# https://gist.github.com/cocoalabs/2fb7dc2199b0d4bf160364b8e557eb66
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

alias md='mkdir'
alias mv='mv -i'
alias less='less -r'  # View ANSI
alias mem='free -mt'
nd() {
    mkdir $@; cd $1;
}
alias ooffice='libreoffice'
# Low volume to play music on top (24h)
alias pinknoise='play -n synth 1440:00 pinknoise vol 0.1'
alias whitenoise='play -n synth 1440:00 whitenoise vol 0.1'
# To aid sleep (24h)
alias brownnoise='play -n synth 1440:00 brownnoise vol 0.1'
alias psg='ps aux | grep'
alias rm='rm -i'
alias rmtree='rm -r'

#NB: http://lcamtuf.blogspot.com/2014/10/psa-dont-run-strings-on-untrusted-files.html
alias strings='strings -a'

tmosh() {
    mosh $@ -- tmux attach -d
}
tmush() {
    ssh $@ -- tmux attach -d
}
# Works like the old MS-DOS tree command
alias tree='tree -d'
alias xv='geeqie'
