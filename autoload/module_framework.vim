function! module_framework#init()
  let s:rc_modules = []
  command! -nargs=1 Module call s:Module(<args>)
  command! LoadModules call s:LoadModules()
endfunction

function! s:Module(module)
  let s:rc_modules += [ a:module ]
endfunction

function! s:LoadModules()
  for module in s:rc_modules
    exec 'source' '$HOME/.config/nvim/rc/'.module.'.vim'
  endfor
endfunction
