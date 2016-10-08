" Cscope
if filereadable("cscope.out")
  set cscopetag
  if !exists('s:added_cscope')
    let s:added_cscope = 1
    cs add cscope.out
  end
endif

nnoremap <buffer> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <buffer> <leader><leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
nnoremap <buffer> <leader><leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
nnoremap <buffer> <leader><leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
nnoremap <buffer> <leader><leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
nnoremap <buffer> <leader><leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nnoremap <buffer> <leader><leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
