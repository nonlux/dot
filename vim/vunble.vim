set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "Core
  Plugin 'gmarik/Vundle.vim'
  Plugin 'Shougo/vimproc.vim'
  Plugin 'xolox/vim-misc'
  Plugin 'pbrisbin/vim-mkdir'
  Plugin 'marvim'  "store marco

  "Gui
  Plugin 'altercation/vim-colors-solarized'
  Plugin 'bling/vim-airline'
  Plugin 'nathanaelkane/vim-indent-guides'
  Plugin 'bronson/vim-trailing-whitespace'

  "File search and explore
  Plugin 'scrooloose/nerdtree'
  Plugin 'ryanoasis/vim-webdevicons'
  Plugin 'Xuyuanp/nerdtree-git-plugin'
  "Plugin 'kien/ctrlp.vim'
  Plugin 'Shougo/unite.vim'
  Plugin 'kana/vim-altr'

  "GIT
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-git'
  Plugin 'airblade/vim-gitgutter'
  Plugin 'sjl/splice.vim'

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
  Plugin 'm2mdas/phpcomplete-extended'
  Plugin 'm2mdas/phpcomplete-extended-symfony'

  "PHP
  Plugin 'nishigori/vim-php-dictionary'
  Plugin 'StanAngeloff/php.vim'

  "CSS+LESS
  Plugin 'groenewege/vim-less'
  Plugin 'skammer/vim-css-color'
  Plugin 'hail2u/vim-css3-syntax'

  "HTML
  Plugin 'mattn/emmet-vim'
  Plugin 'Valloric/MatchTagAlways'
  Plugin 'amirh/HTML-AutoCloseTag'

  "JS
  Plugin 'pangloss/vim-javascript'
  Plugin 'elzr/vim-json'

  "syntax
  Plugin 'scrooloose/syntastic'

  "TWIG
  Plugin 'evidens/vim-twig'

  "other
  Plugin 'chase/vim-ansible-yaml'
  "Plugin 'mileszs/ack.vim'
  "Plugin 'terryma/vim-multiple-cursors'

  "in file navigation
  Plugin 'matchit.zip' "navigate from tags  whit %

  "Taskwarrior
  "Plugin 'farseer90718/vim-taskwarrior'
call vundle#end()            " required
filetype plugin indent on    " required

