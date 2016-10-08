inoremap <C-c> <Esc>
nnoremap Q @@
vnoremap <silent> Q :<BS><BS><BS><BS><BS>exec "'<,'>normal @".nr2char(getchar())<CR>
nnoremap M J
nnoremap x "_x
