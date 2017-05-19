setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.ei
let g:deoplete#sources.rust = ['racer', 'member', 'buffer']

let g:rust_recommended_style = 0 " Prevent rust.vim setting textwidth=99

setlocal textwidth=79
setlocal tabstop=4 shiftwidth=4 softtabstop=4
