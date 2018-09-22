inoremap <C-c> <Esc>
nnoremap Q @@
vnoremap <silent> Q :<BS><BS><BS><BS><BS>exec "'<,'>normal @".nr2char(getchar())<CR>
nnoremap M J
nnoremap x "_x
inoremap <expr> <C-j> pumvisible() ? '<C-n>' : ''
inoremap <expr> <C-k> pumvisible() ? '<C-p>' : ''
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <leader>o o
nnoremap <leader>O O
nmap <leader>f1 f(mza:s/,/\rklkl,krkr/g'z`z=i)
