setlocal tags=./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.ei
let g:deoplete#sources.rust = ['racer', 'member', 'buffer']
