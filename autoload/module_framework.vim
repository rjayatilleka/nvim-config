function! module_framework#init()
  let s:modules = []
  command! -nargs=1 Module call s:Module(<args>)
  command! LoadModules call s:LoadModules()
endfunction

function! s:Module(module)
  let s:modules += [ a:module ]
endfunction

function! s:LoadModules()
  for module in s:modules
    exec 'source' '$HOME/.config/nvim/modules/'.module.'.vim'
  endfor
endfunction
