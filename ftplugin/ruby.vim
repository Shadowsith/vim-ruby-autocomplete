silent !solargraph socket &>/dev/null &
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658']
    \ }
let g:LanguageClient_autoStop = 0
autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

