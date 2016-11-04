 ZSH variables
export ZSH_ROOT="$HOME/src/dot/zsh"
export ZSH_VENDOR="$ZSH_ROOT/vendor"
export PATH="$HOME/src/dot/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/bin:$PATH"

#alias compinit="echo  compinit"
#
source $ZSH_VENDOR/antigen/antigen.zsh
fpath=($ZSH_ROOT/completion $fpath)
skip_global_compinit=1
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    git
    extract
EOBUNDLES
antigen theme agnoster
antigen apply

export ZSH_INIT=1
export EDITOR="vim"
export GOPATH=$HOME
export TERM=xterm-256color

# COMPLETION SETTINGS
# add custom completion scripts

# compsys initialization
#autoload -U compinit
#compinit


# system aliases
alias pacman="sudo pacman -Sy && sudo pacman "
alias ssh-pub-key="cat $HOME/.ssh/id_rsa.pub"

# hub as git
eval "$(hub alias -s)"

#git
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gcf="git checkout -- "
alias grh="git reset HEAD "
alias gcb="git checkout -b"

#tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tmx="tmuxinator"
alias tmn="tmuxinator new"

function tmk() {
 tmux kill-session
}

#docker
#alias docker-compose="docker run -v \"\$(pwd)\":/app  -v \"\$(pwd):\$(pwd)\" -w \"\$(pwd)\" -v /var/run/docker.sock:/var/run/docker.sock -e COMPOSE_PROJECT_NAME=\$(basename \"\$(pwd)\") -ti --rm dduportal/docker-compose:latest"
alias dip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"
alias dockviz="docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock nate/dockviz"

function drun() {
user="user"
if [ $2 ]
then
  user=$2
fi
echo $user
docker run -v $(pwd):/app  -u $user -ti $1 /bin/bash
}

function dent() {
docker exec -ti $1 /bin/bash
}

# tmux
alias tmux="TERM=screen-256color-bce tmux"

#auto start xorg
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi


