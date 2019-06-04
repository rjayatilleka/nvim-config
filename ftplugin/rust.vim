" setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.ei
" let g:deoplete#sources.rust = ['racer', 'member', 'buffer']

" let g:rust_recommended_style = 0 " Prevent rust.vim setting textwidth=99
" setlocal textwidth=79

setlocal tabstop=4 shiftwidth=4 softtabstop=4

let g:rust_use_custom_ctags_defs = 1  "ignore https://github.com/rust-lang/rust.vim/blob/master/ctags/rust.ctags 
let g:rustfmt_autosave = 1

if !exists('g:tagbar_type_rust')
   let g:tagbar_type_rust = {
       \ 'ctagstype' : 'rust',
       \ 'kinds' : [
         \'M:macro,Macro Definition',
         \'P:method,A method',
         \'c:implementation,implementation',
         \'e:enumerator,An enum variant',
         \'f:function,Function',
         \'g:enum,Enum',
         \'i:interface,trait interface',
         \'m:field,A struct field',
         \'n:module,module',
         \'s:struct,structural type',
         \'t:typedef,Type Alias',
         \'v:variable,Global variable',
       \ ]
   \ }
endif
