inoremap <C-c> <Esc>
nnoremap Q @@
vnoremap <silent> Q :<BS><BS><BS><BS><BS>exec "'<,'>normal @".nr2char(getchar())<CR>
nnoremap M J
nnoremap x "_x
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : ''
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : ''
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>
