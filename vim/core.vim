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

set tags=tags;./tags

" Mapping 
set pastetoggle=<F4>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/app/cache/*

set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator

set wildmode=list:longest,full

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

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
noremap <Right> <NOP>
