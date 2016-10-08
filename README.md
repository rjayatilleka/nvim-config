# Neovim Configuration

For Ramith Jayatilleka's personal use. Feel free to copy.

All runtime configuration is modularized into different files and sourced in
`init.vim`. For a decent set of defaults, I recommend disabling the `windows`
and `plugins` modules.

Modules are sourced from `modules/`. Plugins are loaded with vim-plug and then
customized from `plugin_config/`.

### Loading Framework

`autoload/module_framework.vim` is simply a wrapper around `:source` that
searches in `modules/`. Use `:LoadModules` to reload all modules.

`autoload/plugin_framework.vim` is a wrapper around vim-plug that allows you to
add a plugin and a source file to configure it in one line. That makes
disabling plugins easier since there won't be any errors about mappings that
don't exist, etc. The framework also protects you when launching Vim for the
first time when plugins haven't been installed yet.

### Todo

- Add Deoplete (preferred if working) or YouCompleteMe

### Credits

- [vim-plug] by [junegunn@] 
- [xoria256] by [x1o@] 
- All plugins in `modules/plugins.vim` by their respective authors

[junegunn@]: https://github.com/junegunn [x1o@]: https://github.com/x1o
[vim-plug]: https://github.com/junegunn/vim-plug [xoria256]:
https://github.com/vim-scripts/xoria256.vim
