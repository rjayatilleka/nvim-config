function plugin_framework#init()
  let s:plugs = []
  let s:configs = {}
endfunction

function! s:Plugin(...)
  let s:plugs += [ a:1 ]
  if a:0 == 2
    let repo_name = matchstr(a:1, '.*/\zs.*')
    exec 'let' 's:configs.'.a:2 '=' "'".repo_name."'"
  end
endfunction

function! s:LoadPlugins()
  call plug#begin()
  for plug in s:plugs
    exec 'Plug' "'".plug."'"
  endfo
  call plug#end()

  for config in items(s:configs)
    exec 'let repodir =' "'~/.config/nvim/plugged/".config[1]."'"
    if !empty(glob(repodir))
      exec 'source' '$HOME/.config/nvim/plugin_config/'.config[0].'.vim'
    end
  endfor
endfunction

command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()
