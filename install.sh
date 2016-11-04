#!/bin/bash

set -e
DOT_PWD="$HOME/src/dot"
cd $DOT_PWD
export GOPATH="$HOME"


####################################################
echo "Configure vim"
if [ -f ~/.vimrc ]
then
  echo "Warning vimrc exists!!"
else
  ln "$DOT_PWD/vim/.vimrc"  ~/
fi
if [ -d ~/.vim/bundle/Vundle.vim ]
then
  echo "Vundle already installed"
else
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall

if [ -f ~/.vim/proc ]
then
  echo "vimproc already build"
else
  cd ~/.vim/bundle/vimproc.vim/
  make
  cd $OLDPWD
  touch  ~/.vim/proc
fi

if [ -f ~/.vim/ycm ]
then
  echo "YouCompliteMe already build"
else
  cd ~/.vim/bundle/YouCompleteMe
  ./install.py --clang-completer
  cd $OLDPWD
  touch  ~/.vim/ycm
fi

if [ -d ~/.vim/UltiSnips ]
then
  echo "Snips for vim exists"
else
  ln "$DOT_PWD/vim/snips" ~/.vim/UltiSnips -s
fi

echo "Done"

####################################################
echo "Configure tmux"
if [ -f ~/.tmux.conf ]
then
  echo "Warning tmux config already exists"
else
  ln $DOT_PWD/tmux/.tmux.conf  ~/
fi
if [ -d ~/.tmux ]
then
  echo "Warning tmux addional configs already installed"
else
  ln -s $DOT_PWD/tmux ~/.tmux
fi
echo "Done"

####################################################
echo "Configure zsh"

if [ -f ~/.zshrc ]
then
  echo "Warning zsh config already exists"
else
  ln $DOT_PWD/zsh/.zshrc  ~/
fi
if [ -d $DOT_PWD/zsh/vendor/antigen ]
then
  echo "antigen already installed"
else
  git clone git@github.com:zsh-users/antigen.git $DOT_PWD/zsh/vendor/antigen
fi
go get github.com/github/hub
$DOT_PWD/bin/install_zsh
echo "Done"

#############################################################3
echo "Copy fonts"
if [ -d ~/.fonts ]
then
  echo ""
else
  mkdir ~/.fonts
fi
cp $DOT_PWD/fonts/* ~/.fonts
echo "Done"

###################################################3
echo "Config git"
if [ -f ~/.gitconfig ]
then
  echo "Warning git config already exists"
else
  ln $DOT_PWD/git/.gitconfig  ~/
fi
echo "Done"
