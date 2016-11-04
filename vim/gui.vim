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

set nofoldenable    " disable folding
"set foldmethod=syntax   "fold based on indent
"set foldnestmax=10      "deepest fold is 10 levels
"set foldlevel=1
"i use Add a bit extra margin to the left
"set foldcolumn=1

" set git  gutter
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

autocmd FileType help wincmd L
autocmd FileType help execute 'set relativenumber'

"fold highlight
"highlight Folded guibg=grey guifg=blue
"highlight FoldColumn guibg=darkgrey guifg=white

set scrolloff=5                 " Minimum lines to keep above and below cursor
set scrolljump=5                " Lines to scroll when cursor leaves screen

set previewheight=40

set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
  let &listchars = "tab:\u21e5 ,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
endif

"autocmd BufEnter * syn match ErrorMsg /[^\x00-\x7F]/
au BufEnter *.js syn match ErrorMsg /console.log/
au BufEnter *.php syn match ErrorMsg /var_dump/
au Filetype coffee syn match ErrorMsg /console.log/

" highlight values in terminal vim, colorscheme solarized
hi User1                      ctermfg=4          guifg=#40ffff            " Identifier
hi User2                      ctermfg=2 gui=bold guifg=#ffff60            " Statement
hi User3 term=bold cterm=bold ctermfg=1          guifg=White   guibg=Red  " Error
hi User4                      ctermfg=1          guifg=Orange             " Special
hi User5                      ctermfg=10         guifg=#80a0ff            " Comment
hi User6 term=bold cterm=bold ctermfg=1          guifg=Red                " WarningMsg

"buffer manage
nnoremap <F8> :bnext<CR>
nnoremap <F7> :bprev<CR>
nnoremap <F9> :bdel<CR>
nnoremap <silent> <leader>v :<C-u>vsplit<CR>

let g:vim_markdown_folding_disabled=1
