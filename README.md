# Neovim Runtime Configuration

For Ramith Jayatilleka's personal use. Feel free to copy.

All runtime configuration is modularized into different files and sourced in
`init.vim`. For a decent set of defaults, I recommend disabling the `windows`
and `plugins` modules.

Modules are sourced from `rc/`. Plugins are loaded with
[vim-plug](https://github.com/junegunn/vim-plug) and then customized from
`plugin_rc/`.

### Todo

- Make plugin rc only load when that plugin exists.
- Add YouCompleteMe
