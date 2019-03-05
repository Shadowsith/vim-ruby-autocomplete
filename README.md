# vim-ruby-autocomplete
Vim/Neovim ruby autocompletion with help of solargraph and vim language server

This plugin is based on following blog
[post](https://blog.schembri.me/post/solargraph-in-vim/) by Jamie Schembri.<br>

## Requirements
This plugin supports linux only<br>

Tested on:
* Arch Linux (Manjaro)
* Ruby 2.6.\*

### Gems
* <code>gem install solargraph rdoc irb rubocop yarn</code>

Add gem bins to PATH in your .bashrc:
* Check your ruby version!
* <code>PATH=$PATH:$HOME/.gem/ruby/2.6.0/bin</code>  

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
By default completion can be triggered with <C-X><C-O>

### [Completor](https://github.com/maralla/completor.vim)
Add following in your .vimrc:
``` vim
let g:completor_ruby_omni_trigger = '(\.[$\w]\*|::[$\w]\*)$'
```

### MUComplete

### Deoplete


## Issues
Sometimes the solargraph socket server will not start by default 
than you need to restart vim.
