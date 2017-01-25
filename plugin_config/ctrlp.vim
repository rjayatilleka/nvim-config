let g:ctrlp_map = '<c-o>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = [ 'buffertag' ]
let g:ctrlp_switch_buffer = 'et' " Disregard other windows with buffer open
nnoremap <C-I> :CtrlPBufTag<CR>
set wildignore+=*.o
