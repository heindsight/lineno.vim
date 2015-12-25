" File: lineno.vim
" Copyright (c) 2015, Heinrich Kruger (heindsight@gmail.com)
" Distributed under the MIT license (see ../LICENSE)

if exists('g:loaded_lineno')
    finish
endif
let g:loaded_lineno=1

" Get the current state
function! s:GetMode()
    return &relativenumber * 2 + &number
endfunction

" Set the numbering state
function! s:SetMode(mode)
    let &number = a:mode % 2
    let &relativenumber = a:mode / 2
endfunction

function! s:SwitchMode()
    let l:mode = s:GetMode()
    let l:mode = (l:mode + 1) % 4
    call s:SetMode(l:mode)
endfunction

command! SwitchLineNoMode call s:SwitchMode()
command! -nargs=1 SetLineNoMode call s:SetMode(<f-args>)
