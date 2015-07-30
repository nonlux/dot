"source ~/.vim/airline.vim

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
"  Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
   Plugin 'bling/vim-airline'

  "Taskwarrior
  Plugin 'farseer90718/vim-taskwarrior'

  "NERDTree
  Plugin 'scrooloose/nerdtree'
  Plugin 'ryanoasis/vim-webdevicons'
  Plugin 'Xuyuanp/nerdtree-git-plugin'

  Plugin 'kien/ctrlp.vim'

  "GIT
  Plugin 'tpope/vim-fugitive'
  Plugin 'tpope/vim-git'
  Plugin 'airblade/vim-gitgutter'

  "Tabline
"  Plugin 'ap/vim-buftabline'

  Plugin 'majutsushi/tagbar'
  "complite
  Plugin 'Shougo/neocomplete.vim'
  Plugin 'm2mdas/phpcomplete-extended'
  Plugin 'shawncplus/phpcomplete.vim'
  Plugin 'nishigori/vim-php-dictionary'
  Plugin 'm2mdas/phpcomplete-extended-symfony'
"  Plugin 'Valloric/YouCompleteMe'

  "other
  Plugin 'Shougo/unite.vim'
  Plugin 'Shougo/vimproc.vim'
  Plugin 'vim-php/tagbar-phpctags.vim'
  "syntax
  Plugin 'scrooloose/syntastic'

  "TWIG
  Plugin 'evidens/vim-twig'

  Plugin 'mileszs/ack.vim'
"  Plugin 'terryma/vim-multiple-cursors' 
call vundle#end()            " required
filetype plugin indent on    " required

" auto reload vimrc when editing it
"autocmd! bufwritepost .vimrc source ~/.vimrc
"autocmd! bufwritepost .vimrc BundleInstall


"GUI
  "Show syntax
  syntax on
  "Show relative number column
  set relativenumber
  set number
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

  set backspace=indent,eol,start  "Allow backspace in insert mode
  set history=1000                "Store lots of :cmdline history
  set showcmd                     "Show incomplete cmds down the bottom
  set showmode
  " turnof swap
  set noswapfile
  set nobackup
  set nowb
  " Don't redraw while executing macros (good performance config)
  set lazyredraw

  " Show matching brackets when text indicator is over them
  set showmatch
  " How many tenths of a second to blink when matching brackets
  set mat=2

  " No annoying sound on errors
  set noerrorbells
  set novisualbell
  set t_vb=
  set tm=500

  " Add a bit extra margin to the left
"  set foldcolumn=1

  " ================ Indentation ======================


  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab

  filetype plugin on
  filetype indent on

  " ================ Search ===========================

  set incsearch       " Find the next match as we type the search
  set hlsearch        " Highlight searches by default
  set ignorecase      " Ignore case when searching...
  set smartcase       " ...unless we type a capital

  autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
  autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
  autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
  autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
  autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
  autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
 " buff Tabline


  nnoremap <F8> :bnext<CR>
  nnoremap <F7> :bprev<CR>
  nnoremap <F9> :bdel<CR>
  :command W w


"NERDTree
  "Tree should show if file not specifed
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd VimEnter * wincmd p
  "Default mapping
  map <C-n> :NERDTreeToggle<CR>
  "Close vim if only NERDTree
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

  set guifont=Monofur\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
  let NERDTreeIgnore =['\.swp','\.git$']

" update file when changed
set autoread
set pastetoggle=<F4>

function! AddVimComment()
  normal!	0i"
endfunction

let g:phpcomplete_index_composer_command="composer"
" neocomplite
 let g:neocomplete#enable_at_startup = 1
 "" Use smartcase.
 let g:neocomplete#enable_smart_case = 1
 " Set minimum syntax keyword length.
 let g:neocomplete#sources#syntax#min_keyword_length = 3
 let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

 " Define keyword.
 if !exists('g:neocomplete#keyword_patterns')
     let g:neocomplete#keyword_patterns = {}
 endif
 let g:neocomplete#keyword_patterns['default'] = '\h\w*'
 " Plugin key-mappings.
 inoremap <expr><C-g>     neocomplete#undo_completion()
 inoremap <expr><C-l>     neocomplete#complete_common_string()

 " Recommended key-mappings.
 " <CR>: close popup and save indent.
 inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
 function! s:my_cr_function()
   return neocomplete#close_popup() . "\<CR>"
   " For no inserting <CR> key.
   "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
 endfunction
 " <TAB>: completion.
 inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
 " <C-h>, <BS>: close popup and delete backword char.
 inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
 inoremap <expr><C-y>  neocomplete#close_popup()
"inoremap <expr><C-e>  neocomplete#cancel_popup()
 " Close popup by <Space>
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

 autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
 autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
 autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
 autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
 autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
 autocmd FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

 "syntastic
 set statusline+=%#warningmsg#
 set statusline+=%{SyntasticStatuslineFlag()}
 set statusline+=%*

 let g:syntastic_always_populate_loc_list = 1
 let g:syntastic_auto_loc_list = 1
 let g:syntastic_check_on_open = 1
 let g:syntastic_check_on_w = 1
 let g:syntastic_enable_less_checker = 1
 let g:syntastic_mode_map = {
           \ "mode": "active",
           \ "active_filetypes":["php", "twig", "js"],
           \ "passive_filetypes": [] }
 let g:syntastic_javascript_checkers = ['jshint']
 autocmd BufEnter * sign define dummy
 autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts = 1


set tags=tags;./tags
