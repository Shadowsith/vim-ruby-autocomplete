# completor-ruby-lang
Vim ruby autocompletion with help of completor and language server

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
By default the plugin will start solargraph each time if vim is opened. 

## Usage
By default completion can be triggered with <C-X><C-O>

* [Completor.vim](https://github.com/maralla/completor.vim)
### [Completor](https://github.com/maralla/completor.vim)
Add following in your .vimrc:
let g:completor_ruby_omni_trigger = '(\.[$\w]\*|::[$\w]\*)$'

### MUComplete

### Deoplete

## Issues
Sometimes the solargraph socket server will not start by default 
than you need to restart vim.


