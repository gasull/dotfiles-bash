# git
source ~/.config/bash/bundle/git-prompt/git-prompt.sh

# vi mode
set -o vi

# virtualenvs
if [ -x /etc/bash_completion.d/virtualenvwrapper ] ; then
    source /etc/bash_completion.d/virtualenvwrapper
fi

# Set vimrc's location and source it on vim startup
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc" | source $MYVIMRC'

# pylint
export PYLINTRC="$XDG_CONFIG_HOME/pylintrc"
