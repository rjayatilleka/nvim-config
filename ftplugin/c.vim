setlocal shiftwidth=4 tabstop=4 softtabstop=4

" Cscope
if filereadable("cscope.out")
  " set cscopetag " use cscope instead of tags
  if !exists('s:added_cscope')
    let s:added_cscope = 1
    cs add cscope.out
  end
endif

" c: Find functions calling this function
nnoremap <buffer> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
" s: Find this C symbol
nnoremap <buffer> <leader><leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
" g: Find this definition
nnoremap <buffer> <leader><leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
" t: Find this text string
nnoremap <buffer> <leader><leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
" f: Find this file
nnoremap <buffer> <leader><leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
" i: Find files #including this file
nnoremap <buffer> <leader><leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
" d: Find functions called by this function
nnoremap <buffer> <leader><leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" a: Find assignments to this symbol
nnoremap <buffer> <leader><leader>a :cs find a <C-R>=expand("<cword>")<CR><CR>
