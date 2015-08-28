set history=1000                "Store lots of :cmdline history
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

"update file when changed
set autoread

set tags=tags;./tags

" Mapping 
set pastetoggle=<F4>

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/app/cache/*

:command W w
:command Q q
:command Wq wq
