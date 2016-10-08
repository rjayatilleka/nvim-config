let s:modules = [
    \ 'general',
    \ 'windows',
    \ 'tab_pages',
    \ 'movement',
    \ 'searching',
    \ 'editing',
    \ 'indentation',
    \ 'tags',
    \ 'command_line_window',
    \ 'plugin_initialization',
    \ 'plugin_customization',
  \ ]

for module in s:modules
  exec 'source' '$HOME/.config/nvim/rc/'.module.'.vim'
endfor
