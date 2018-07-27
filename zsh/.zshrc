# ZSH variables
export ZSH_ROOT="$HOME/src/dot/zsh"
export ZSH_VENDOR="$ZSH_ROOT/vendor"
export PATH="$HOME/.gem/ruby/2.5.0/bin:$HOME/.local/bin:$HOME/.npm/bin:$HOME/src/dot/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:$PATH"

#alias compinit="echo  compinit"
#
#
source /usr/share/zsh/share/antigen.zsh

#source $ZSH_VENDOR/antigen/antigen.zsh
fpath=($ZSH_ROOT/completion $fpath)
skip_global_compinit=1
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
    zsh-users/zsh-autosuggestions
    bgnotify
    command-not-found
    common-aliases
    composer
    cp
    docker
    docker-compose
    encode64
    extract
    git
    git-extras
EOBUNDLES
antigen theme agnoster
# export PS1='$(task +in +PENDING count) \ue0b0'$PS1

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

#git
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias grh="git reset HEAD "
alias gcb="git checkout -b"
alias gu="git rm --cached -r "
alias gpo="git pull -u origin master"

#tmux
alias tmux="TERM=screen-256color-bce tmux"
alias tx="tmuxinator start"

function tmks() {
 tmux kill-session
}

alias txk="tmux display-message -p '#S' | xargs tmuxinator stop"


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

#ansible
alias ansl="ansible-playbook -c local -i ./hosts "

unalias gm

alias ta="task add +inbox"
alias tp="task modify -inbox"
