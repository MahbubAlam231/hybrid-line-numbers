" Maintainer  : Mahbub Alam
" License     : This file is placed in public domain
" Version     : 1.1.1
" Description : Toggle between absolute and relative number


set number relativenumber             " 'Hybrid' line numbers

augroup NumberToggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * :set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter   * :set norelativenumber
augroup end

function! NumberToggle()
    if (&relativenumber == 1)
        set norelativenumber
    else
        set relativenumber
    endif
endfunction

