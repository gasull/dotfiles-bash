dotfiles-bash
=============

My ~/.bashrc, aliases, ~/inputrc and more

## Installation

Clone the repo:

    mkdir ~/src
    cd ~/src
    git clone https://github.com/gasull/dotfiles-bash.git

Create bash directory in XDG structure:

    cd ~/.config
    ln -s ~/src/dotfiles-bash/bash 

Create symbolic links:

    cd ~
    ln -s .config/bash/bash_logout .bash_logout
    ln -s .config/bash/bash_profile .bash_profile
    ln -s .config/bash/bashrc .bashrc
    ln -s .config/bash/dircolors .dircolors
    ln -s .config/bash/git-prompt.conf .git-prompt.conf
    ln -s .config/bash/inputrc .inputrc

Add dependencies:

    cd ~/.config/bash
    mkdir bundle
    cd bundle
    git clone https://github.com/lvv/git-prompt.git
    git clone https://github.com/seebi/dircolors-solarized.git

TODO: install dotfiles-vim
