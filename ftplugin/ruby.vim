let g:ruby_autocomplete_solargraph = get(g:, 'ruby_autocomplete_solargraph', 0)

let g:LanguageClient_serverCommands = {
    \ 'ruby': [g:ruby_autocomplete_solargraph, 'stdio']
    \ }

autocmd FileType ruby setlocal omnifunc=LanguageClient#complete

echo g:ruby_autocomplete_solargraph
