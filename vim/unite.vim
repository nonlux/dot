nnoremap <leader>r :<C-u>Unite -auto-preview -start-insert file_rec/async:!<CR>
let g:unite_source_history_yank_enable = 1
nnoremap <leader>y :<C-u>Unite history/yank<CR>

nnoremap <silent> <leader>b :<C-u>Unite buffer bookmark<CR>
nnoremap <space>/ :Unite grep:.<CR>
