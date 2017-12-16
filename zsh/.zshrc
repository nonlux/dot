# ZSH variables
export ZSH_ROOT="$HOME/src/dot/zsh"
export ZSH_VENDOR="$ZSH_ROOT/vendor"
export PATH="$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/src/dot/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:$PATH"

#alias compinit="echo  compinit"
#
source $ZSH_VENDOR/antigen/antigen.zsh
fpath=($ZSH_ROOT/completion $fpath)
skip_global_compinit=1
antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
    zsh-users/zsh-autosuggestions
    bgnotify
    bower
    catimg
    colored-man-pages
    colorize
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
    jira
EOBUNDLES
antigen theme agnoster
antigen apply

export ZSH_INIT=1
export EDITOR="vim"
export GOPATH=$HOME
export TERM=xterm-256color

#auto start xorg
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi
# COMPLETION SETTINGS
# add custom completion scripts

# compsys initialization
#autoload -U compinit
#compinit


# system aliases
alias pacman="sudo pacman -Sy && sudo pacman "
alias ssh-pub-key="cat $HOME/.ssh/id_rsa.pub"
alias ccat='colorize_via_pygmentize'

function commit_and_exit() {
cd $1
(gst  && ga . && gc -m "fast commit" && gp) || echo "foo" && cd .. && ls -l
}


alias src_status="cd ~/src && find . -mindepth 1 -maxdepth 1 -type d | xargs -n 1 enter_and_status"
# hub as git
eval "$(hub alias -s)"

#git
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gcf="SKIP_GCO=1 git checkout -- "
alias grh="git reset HEAD "
alias gcb="git checkout -b"
alias gu="git rm --cached -r "
alias gpo="git pull -u origin master"
alias gcos="SKIP_GCO=1 git checkout"

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

#emacs
alias emacs="emacs -nw"
alias emacsi="EMACS_INSTALL=1 emacs -nw"


function yp() { 
if ! [ $1 ]; then
    yo nlx-package
else
    yo npl-package:$@
fi
}

function npm-proxy-on() {
npm config set proxy http://localhost:8080/ 
npm config set https-proxy http://localhost:8080/ 
npm config set strict-ssl false
}
function npm-proxy-off() {
npm config rm proxy
npm config rm https-proxy
npm config set strict-ssl true
}

alias npmp="npm-proxy-off && npm publish && npm-proxy-on"

unalias gm
