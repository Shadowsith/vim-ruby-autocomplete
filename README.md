# vim-ruby-autocomplete
Vim/Neovim ruby autocompletion with help of solargraph and vim language server

This plugin is based on following blog
[post](https://blog.schembri.me/post/solargraph-in-vim/) by [Jamie Schembri](https://github.com/shkm).

## Demo
![Demo](https://shadowsith.de/vim-ruby-autocomplete/demo.gif)


Tested on:
* Arch Linux (Manjaro)
* Ruby 2.6.\*

## Requirements
This plugin supports linux only<br>

### Gems
* <code>gem install solargraph rdoc irb rubocop yarn</code>

Add gem bins to PATH in your .bashrc:
* Check your ruby version!
* <code>PATH=$PATH:$HOME/.gem/ruby/your-ruby-version/bin</code>  

### Vim Plugins
* [LanguageClient-neovim](https://github.com/autozimu/LanguageClient-neovim)

## Configuration
By default the plugin will start solargraph each time if vim is opened.<br>
Additional you can add/modify this hotkeys to refactor and go to definition:
``` vim
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
```
You can also add a <code>.solargraph.yml</code> to your project root folder to include/exclude
ruby files or require additional gems:
``` yml
---
include:
- "**/*.rb"
exclude:
- spec/**/*
- test/**/*
- vendor/**/*
require:
- rails
reporters: []
domains: []
plugins: []
```

## Usage
By default completion can be triggered with <code>CTRL-X + CTRL-O</code>

Follwing optional variables are available for your .vimrc
``` vim
let = g:ruby_autocomplete_solargraph = '<path to solragraph bin>'
" If you dont use rvm the path should be like:
" ~/.gem/ruby/<ruby version>/bin/solargraph

```

### [Completor](https://github.com/maralla/completor.vim)
Add following in your .vimrc:
``` vim
let g:completor_ruby_omni_trigger = '([$\w]{1,}|\.[\w]*|::[$\w]*)$'
```

### [MUComplete](https://github.com/lifepillar/vim-mucomplete) and [Supertab](https://github.com/ervandew/supertab)
On default configuration pushich <code>TAB</code> should do the trick.

### [Neocomplete](https://github.com/Shougo/neocomplete.vim)
``` vim
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}

```

## Documentation
For additional information write follwing in Vim:
``` vim
:help ruby-autocomplete

```

## Issues
Sometimes the solargraph socket server will not start by default 
than you need to restart vim.

## TODO
* Async startup of solargraph instead of synchronous waiting time

## See also
There are similiar plugins to vim-ruby-autocomplete but I couldn't get them to work
on my systems. That was the initial idea to write this small plugin. 
* [vim-solargraph](https://github.com/hackhowtofaq/vim-solargraph)
* [vim-monster](https://github.com/osyo-manga/vim-monster)
* [deoplete-solargraph](https://github.com/uplus/deoplete-solargraph) (deoplete only)
