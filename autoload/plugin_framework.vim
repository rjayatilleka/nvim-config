function plugin_framework#init()
  let s:plugs = []
  let s:configs_to_repos = {}
endfunction

function! s:Plugin(...)
  let l:plugin_struct = { 'plug': a:1, 'params': {} }
  if a:0 > 1
    let repo = matchstr(a:1, '.*/\zs.*')
    exec 'let' 's:configs_to_repos.'.a:2 '=' "'".repo."'"
  end
  if a:0 > 2
    let l:plugin_struct.params = a:3
  end
  let s:plugs += [ l:plugin_struct ]
endfunction

function! s:LoadPlugins()
  call plug#begin()
  for plugin_struct in s:plugs
    exec 'Plug' "'".plugin_struct.plug."'," string(plugin_struct.params)
  endfor
  call plug#end()

  for config_and_repo in items(s:configs_to_repos)
    exec 'let repodir =' "'~/.config/nvim/plugged/".config_and_repo[1]."'"
    if !empty(glob(repodir))
      exec 'let plugconfig =' "'~/.config/nvim/plugin_config/".config_and_repo[0].".vim'"
      if !empty(glob(plugconfig))
        exec 'source' plugconfig
      endif
    end
  endfor
endfunction

command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()
