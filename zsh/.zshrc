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

alias pacman="sudo pacman -Sy && sudo pacman "
