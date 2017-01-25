setlocal textwidth=79

nnoremap <leader>f1 yyp:s/./=/g<CR>:noh<CR>
nnoremap <leader>f2 yyp:s/./-/g<CR>:noh<CR>
nnoremap <silent> <leader>fm :w !mkwiki %<CR><CR>

