function plugin_framework#init()
  let s:plugs = []
  let s:modules = {}
endfunction

function! s:Plugin(...)
  let s:plugs += [ a:1 ]
  if a:0 == 2
    exec 'let' 's:modules.'.a:2 '=' "'".a:2."'"
  end
endfunction

function! s:LoadPlugins()
  call plug#begin()
  for plug in s:plugs
    exec 'Plug' "'".plug."'"
  endfo
  call plug#end()

  for module in values(s:modules)
    exec 'source' '$HOME/.config/nvim/plugin_rc/'.module.'.vim'
  endfor
endfunction

command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()
