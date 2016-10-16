autocmd BufEnter * set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" TODO get ftplugins working
autocmd FileType python,c,cpp,java setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType make set noexpandtab
