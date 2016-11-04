"Tree should show if file not specifed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * wincmd p

"Close vim if only NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set guifont=Monofur\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
let NERDTreeIgnore =['\.swp','\.git$']
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeAutoDeleteBuffer=1

"Default mapping
map <C-n> :NERDTreeToggle<CR>
