function! s:Module(module)
  exec 'source' '$HOME/.config/nvim/rc/'.a:module.'.vim'
endfunction

function! s:Plugin(...)
  let s:plugs += [ a:1 ]
  if a:0 == 2
    let s:plugin_rc_modules += [ a:2 ]
  end
endfunction

let s:plugs = []
let s:plugin_rc_modules = []

function! s:LoadPlugins()
  call plug#begin()
  for plug in s:plugs
    exec 'Plug' "'".plug."'"
  endfo
  call plug#end()

  for module in s:plugin_rc_modules
    exec 'source' '$HOME/.config/nvim/plugin_rc/'.module.'.vim'
  endfor

  let s:plugs = []
  let s:plugin_rc_modules = []
endfunction

command! -nargs=1 LoadModule call s:Module(<args>)
command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()
