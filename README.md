# Neovim Runtime Configuration

For Ramith Jayatilleka's personal use. Feel free to copy.

All runtime configuration is modularized into different files and sourced in
`init.vim`. For a decent set of defaults, I recommend disabling the `windows`
and `plugins` modules.

Modules are sourced from `modules/`. Plugins are loaded with [vim-plug] and then
customized from `plugin_config/`.

### Todo

- Make plugin rc only load when that plugin exists.
- Add YouCompleteMe

### Credits

- [vim-plug] by [junegunn@] 
- [xoria256] by [x1o@] 
- All plugins in `modules/plugins.vim` by their respective authors

[junegunn@]: https://github.com/junegunn
[x1o@]: https://github.com/x1o
[vim-plug]: https://github.com/junegunn/vim-plug
[xoria256]: https://github.com/vim-scripts/xoria256.vim
