" Operator Replace
map R <Plug>(operator-replace)

" Nerd Tree
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeMapJumpLastChild="\t"
let NERDTreeMapJumpFirstChild="\\"
let g:airline#extensions#whitespace#enabled = 0
nnoremap <C-n> :NERDTreeToggle<CR>:set rnu<CR><C-w>_

" Tagbar
let g:tagbar_autoclose = 1
nnoremap <C-b> :TagbarToggle<CR>:set rnu<CR>:resize<CR>

" Neomake
nnoremap <leader>n :Neomake<CR>
nnoremap <leader>N :sign unplace *<CR>

" Ctrlp
let g:ctrlp_map = '<c-o>'
let g:ctrlp_show_hidden = 1
let g:ctrlp_extensions = [ 'buffertag' ]
let g:ctrlp_switch_buffer = 'et' " Disregard other windows with buffer open
nnoremap <C-I> :CtrlPBufTag<CR>

" YankStack
let g:yankstack_map_keys = 0
nmap <C-p> <Plug>yankstack_substitute_older_paste

" Reload All
nnoremap <leader>r :ReloadAll<CR>

" CamelCaseMotions
map <silent> <leader>w <Plug>CamelCaseMotion_w
map <silent> <leader>b <Plug>CamelCaseMotion_b
map <silent> <leader>e <Plug>CamelCaseMotion_e
omap <silent> i<leader>w <Plug>CamelCaseMotion_iw
xmap <silent> i<leader>w <Plug>CamelCaseMotion_iw
omap <silent> i<leader>b <Plug>CamelCaseMotion_ib
xmap <silent> i<leader>b <Plug>CamelCaseMotion_ib
omap <silent> i<leader>e <Plug>CamelCaseMotion_ie
xmap <silent> i<leader>e <Plug>CamelCaseMotion_ie

" Caps Lock
autocmd VimEnter * iunmap <C-G>c
autocmd VimEnter * iunmap <C-G>S
autocmd VimEnter * iunmap <C-G>s
imap <C-g> <Plug>CapsLockToggle

" Auto Save
autocmd User AutoSavePost silent echo 0

" Easymotion
let g:EasyMotion_do_mapping = 0
nmap f <Plug>(easymotion-s)
omap f <Plug>(easymotion-s)
vmap f <Plug>(easymotion-s)
nmap t <Plug>(easymotion-bd-t)
omap t <Plug>(easymotion-bd-t)
vmap t <Plug>(easymotion-bd-t)
nmap <leader><leader>w <Plug>(easymotion-bd-w)
omap <leader><leader>w <Plug>(easymotion-bd-w)
vmap <leader><leader>w <Plug>(easymotion-bd-w)
nmap <leader><leader>e <Plug>(easymotion-bd-e)
omap <leader><leader>e <Plug>(easymotion-bd-e)
vmap <leader><leader>e <Plug>(easymotion-bd-e)

" vim-racer
let g:racer_no_default_keymappings = 1
