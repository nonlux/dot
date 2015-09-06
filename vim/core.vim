set encoding=utf-8
set fileformat=unix
set history=1000                "Store lots of :cmdline history
set title
set showcmd                     "Show incomplete cmds down the bottom
set showmode
" turnof swap
set noswapfile
set nobackup
set nowb
" Don't redraw while executing macros (good performance config)
set lazyredraw

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)

"update file when changed
set autoread
set updatetime=250                " Do things when I stop typing for three-quarters of a second.

set notimeout                     " Don't time out partially entered mapped key sequences.
set ttimeout                      " But do time out key codes.

set tags=tags;./tags

" Mapping 
set pastetoggle=<F4>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/app/cache/*

set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator

set wildmode=list:longest,full

set clipboard=unnamed,unnamedplus

let g:user_name = "nonlux"
let g:user_email = "nonluxi@gmail.com"

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Russian keyboard
set iskeyword=@,48-57,_,192-255
set keymap=russian-jcukenwin
if has('multi_byte')
  set iminsert=0 imsearch=0
endif

:command W w
:command Q q
:command Wq wq
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
nnoremap P o<Esc>p<CR>
nnoremap L o<Esc><CR>
nnoremap <silent> <leader>w ddp<CR>
nnoremap <silent> <leader>' 0f'ldi'u<CR>
nnoremap <silent> <leader>g Go<CR>
nnoremap <silent> <leader>p' i''<ESC>hp<CR>
nnoremap <silent> <leader>p" i""<ESC>hp<CR>
