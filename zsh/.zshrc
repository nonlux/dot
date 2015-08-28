# ZSH variables
export ZSH_ROOT="$HOME/src/dot/zsh"
export ZSH_VENDOR="$ZSH_ROOT/vendor"
export PATH="$HOME/src/dot/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/bin:$PATH"

# 
source $ZSH_VENDOR/antigen/antigen.zsh
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    vi-mode
    git
    composer
    bower
EOBUNDLES
antigen theme agnoster
antigen apply


# COMPLETION SETTINGS
# add custom completion scripts
fpath=($ZSH_ROOT/completion $fpath) 
  
# compsys initialization
autoload -U compinit
compinit

# system aliases
alias pacman="sudo pacman -Sy && sudo pacman "
# hub as git
eval "$(hub alias -s)"

# add ssh-agent ang default keys


if [ -z $ZSH_INIT ]
then
else
    eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
fi


alias ssh-pub-key="cat $HOME/.ssh/id_rsa.pub"

function _sfconsole() {
export __PWD=$(pwd)
cd /home/nonlux/src/$1
source <(app/console  _completion --generate-hook) &&\
cd /home/nonlux
cd $__PWD
}
export EDITOR="vim"
export GOPATH=$HOME



export ZSH_INIT=1

  
alias docker-compose="docker run -v \"\$(pwd)\":/app  -v \"\$(pwd):\$(pwd)\" -w \"\$(pwd)\" -v /var/run/docker.sock:/var/run/docker.sock -e COMPOSE_PROJECT_NAME=\$(basename \"\$(pwd)\") -ti --rm dduportal/docker-compose:latest"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'" 
function drun() {
docker run -ti $1 /bin/bash
}
function dent() {
docker exec -ti $1 /bin/bash
}
