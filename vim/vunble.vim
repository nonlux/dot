set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "Core
  Plugin 'gmarik/Vundle.vim'
  Plugin 'Shougo/vimproc.vim'
  Plugin 'xolox/vim-misc'

  "Gui
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'bling/vim-airline'

  "File search and explore
  Plugin 'scrooloose/nerdtree'
  Plugin 'ryanoasis/vim-webdevicons'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  "Plugin 'kien/ctrlp.vim'
  Plugin 'Shougo/unite.vim'

  "GIT
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-git'
  Plugin 'airblade/vim-gitgutter'

  "Tags
  Plugin 'majutsushi/tagbar'
  Plugin 'xolox/vim-easytags'
  Plugin 'vim-php/tagbar-phpctags.vim'

  "Comments
  Plugin 'scrooloose/nerdcommenter'

  "complite
  Plugin 'ervandew/supertab'
  Plugin 'Valloric/YouCompleteMe'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  "Plugin 'Shougo/neocomplete.vim'
  Plugin 'shawncplus/phpcomplete.vim'
  Plugin 'nishigori/vim-php-dictionary'
  Plugin 'm2mdas/phpcomplete-extended'
  Plugin 'm2mdas/phpcomplete-extended-symfony'

  "other
  "syntax
  Plugin 'scrooloose/syntastic'

  "TWIG
  Plugin 'evidens/vim-twig'

  "Plugin 'mileszs/ack.vim'
  "Plugin 'terryma/vim-multiple-cursors' 

  "Taskwarrior
  "Plugin 'farseer90718/vim-taskwarrior'
call vundle#end()            " required
filetype plugin indent on    " required

