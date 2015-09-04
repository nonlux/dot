let g:phpcomplete_index_composer_command="docker exec -t cgp_php_1 /usr/bin/composer --no-ansi"
"let g:phpcomplete_index_composer_command="composer"
autocmd FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP
