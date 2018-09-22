setlocal textwidth=79

nnoremap <leader><leader>f1 yyp:s/./=/g<CR>:noh<CR>
nnoremap <leader><leader>f2 yyp:s/./-/g<CR>:noh<CR>
nnoremap <silent> <leader><leader>fm :w !mkwiki %<CR><CR>

