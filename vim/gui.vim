" GUI
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

" set max column width
set colorcolumn=80

"Always show statusline
set laststatus=2

" this enables "visual" wrapping
set wrap

" this turns off physical line wrapping (ie: automatic insertion of newlines)
set textwidth=0 wrapmargin=0
set hidden

set backspace=indent,eol,start  "Allow backspace in insert mode

set splitright                  " Puts new vsplit windows to the right of the current


" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit extra margin to the left
set foldcolumn=1

" set git  gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

autocmd FileType help wincmd L
autocmd FileType help execute 'set relativenumber'

"fold highlight
highlight Folded guibg=grey guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white

"buffer manage
nnoremap <F8> :bnext<CR>
nnoremap <F7> :bprev<CR>
nnoremap <F9> :bdel<CR>

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
