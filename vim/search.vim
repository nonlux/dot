set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital

nnoremap <silent> <Esc><Esc> :let @/=""<CR>
