let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ }
let g:LanguageClient_diagnosticsEnable = 0

nnoremap ;; :call LanguageClient_textDocument_hover()<CR>
nnoremap ;;; :call LanguageClient_contextMenu()<CR>
nnoremap ;] :call LanguageClient_textDocument_definition()<CR>
nnoremap ;\ :call LanguageClient_textDocument_implementation()<CR>
nnoremap ;[ :call LanguageClient_textDocument_references()<CR>
