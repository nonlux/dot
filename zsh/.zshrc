# ZSH variables
export ZSH_ROOT="$HOME/src/dot/zsh"
export ZSH_VENDOR="$ZSH_ROOT/vendor"
export PATH="$HOME/bin:$PATH"
# 
source $ZSH_VENDOR/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundles <<EOBUNDLES
    vi-mode
    git
    composer
    Lokaltog/powerline powerline/bindings/zsh
EOBUNDLES
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
if [ -f "${SSH_AUTH_SOCK}" ]; then
    eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
    export SSH_AUTH_SOCK
    ssh-add 
fi

