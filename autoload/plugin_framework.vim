function plugin_framework#init()
  let s:plugs = []
  let s:configs_to_repos = {}
endfunction

function! s:Plugin(...)
  let s:plugs += [ a:1 ]
  if a:0 == 2
    let repo = matchstr(a:1, '.*/\zs.*')
    exec 'let' 's:configs_to_repos.'.a:2 '=' "'".repo."'"
  end
endfunction

function! s:LoadPlugins()
  call plug#begin()
  for plug in s:plugs
    exec 'Plug' "'".plug."'"
  endfo
  call plug#end()

  for config_and_repo in items(s:configs_to_repos)
    exec 'let repodir =' "'~/.config/nvim/plugged/".config_and_repo[1]."'"
    if !empty(glob(repodir))
      exec 'source' '$HOME/.config/nvim/plugin_config/'.config_and_repo[0].'.vim'
    end
  endfor
endfunction

command! -nargs=* Plugin call s:Plugin(<args>)
command! LoadPlugins call s:LoadPlugins()
