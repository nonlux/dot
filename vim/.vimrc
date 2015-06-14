set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  "Let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'

  "Color schemed solarizer
  Plugin 'altercation/vim-colors-solarized'

  "Powerline
  Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

  "Taskwarrior
  Plugin 'farseer90718/vim-taskwarrior'
call vundle#end()            " required
filetype plugin indent on    " required

"GUI
"Show syntax
syntax on
" Show relative number column
set relativenumber
"Set color scheme 
set  t_Co=256
set background=dark
colorscheme solarized
set cursorline
set colorcolumn=80
" Always show statusline
set laststatus=2
