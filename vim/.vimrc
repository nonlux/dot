source ~/.vim/airline.vim

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

  "NERDTree
  Plugin 'scrooloose/nerdtree'
  Plugin 'ryanoasis/vim-webdevicons'
  Plugin 'Xuyuanp/nerdtree-git-plugin'

  "GIT
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-git'
  Plugin 'airblade/vim-gitgutter'

  "Tabline
  Plugin 'ap/vim-buftabline'
call vundle#end()            " required
filetype plugin indent on    " required

"GUI
  "Show syntax
  syntax on
  "Show relative number column
  set relativenumber
  "Set color scheme 
  set  t_Co=256
  set background=dark
  colorscheme solarized
  "select current line
  set cursorline
  set colorcolumn=80
  "Always show statusline
  set laststatus=2
  " this enables "visual" wrapping
  set wrap
  " this turns off physical line wrapping (ie: automatic insertion of newlines)
  set textwidth=0 wrapmargin=0
  set hidden
  nnoremap <F7> :bnext<CR>
  nnoremap <F8> :bprev<CR>


"NERDTree
  "Tree should show if file not specifed 
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  "Default mapping
  map <C-n> :NERDTreeToggle<CR>
  "Close vim if only NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  set guifont=Monofur\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
  let NERDTreeIgnore =['\.swp','\.git$']

" update file when changed 
set autoread
