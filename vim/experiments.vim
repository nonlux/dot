function! AddVimComment()
  normal!	0i"
endfunction


function! ToggleVerbose()
    if !&verbose
        set verbosefile=~/.log/vim/verbose.log
        set verbose=15
    else
        set verbose=0
    endif
endfunction
