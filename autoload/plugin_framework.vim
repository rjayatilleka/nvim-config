function plugin_framework#init()
  let s:plugs = []
  let s:plugin_rc_modules = []
endfunction

function! s:Plugin(...)
  let s:plugs += [ a:1 ]
  if a:0 == 2
    let s:plugin_rc_modules += [ a:2 ]
  end
endfunction

function! s:LoadPlugins()
  call plug#begin()
  for plug in s:plugs
    exec 'Plug' "'".plug."'"
  endfo
  call plug#end()

  for module in s:plugin_rc_modules
    exec 'source' '$HOME/.config/nvim/plugin_rc/'.module.'.vim'
  endfor
endfunction

command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()