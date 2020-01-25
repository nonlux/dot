# If you come from bash you might have to change your $PATH.
  export PATH="$HOME/.gem/ruby/2.5.0/bin:$HOME/.local/bin:$HOME/.npm/bin:$HOME/src/dot/bin:$HOME/.gem/ruby/2.2.0/bin:$HOME/.gem/ruby/2.3.0/bin:$HOME/bin:$HOME/.cargo/bin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH="/home/nonlux/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"



# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  extract
  bgnotify
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR="vim"
export GOPATH=$HOME
export TERM=xterm-256color
export GOPATH=~/src/go-workspace
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$HOME/.cabal/bin
export PATH=$HOME/.ghcup/bin:$PATH
export GOPRIVATE=git.nonlux.ru

GO111MODULE=auto


# system aliases
# don't forget sudo for pacman
alias pacman="sudo pacman -Sy && sudo pacman "
# show my public key
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

#docker
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

unalias gm

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export GITLAB_TOKEN="2jJEH8tPjjfFxSCYzvDL"
