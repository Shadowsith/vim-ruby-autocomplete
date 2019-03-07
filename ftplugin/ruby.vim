if get(g:, 'solargraph_listen_manually', 0) == 0
    silent !solargraph socket &>/dev/null &
    if get(g:, 'vim_ruby_autocomplete_start', 0) == 0
        if get(g:, 'solargraph_listen_time', 0) == 0
            sleep 500m
        else
            let mil = g:solargraph_listen_time.'m'
            exec 'sleep '.mil
        endif
    endif
endif

let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658']
    \ }

if get(g:, 'LanguageClient_autoStop', 1) == 1
    let g:LanguageClient_autoStop = 1
endif

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

