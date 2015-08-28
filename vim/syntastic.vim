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
