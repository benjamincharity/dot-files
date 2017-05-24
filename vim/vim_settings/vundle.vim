" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"
" Vundle - Plug-in manager for Vim
" https://github.com/gmarik/Vundle.vim
Plugin 'gmarik/Vundle.vim'

"
" Nerd Commenter - Powerful commenting tools
" https://github.com/scrooloose/nerdcommenter
" Customization: _nerd_commenter.vim
Plugin 'scrooloose/nerdcommenter'

"
" NerdTree - Filesystem explorer
" https://github.com/scrooloose/nerdtree
" Customization: _nerd_tree.vim
Plugin 'scrooloose/nerdtree'

"
" Vim Fugitive - The best Git wrapper of all time.
" https://github.com/tpope/vim-fugitive
" Customization: _fugitive.vim
Plugin 'tpope/vim-fugitive'

"
" Buffer Explorer
" https://github.com/jlanzarotta/bufexplorer
Plugin 'jlanzarotta/bufexplorer'

"
" SASS lint for Syntastic
" https://github.com/gcorne/vim-sass-lint
" Customization: _vim_sass_lint.vim
Plugin 'gcorne/vim-sass-lint'

"
" Syntastic - Syntax checking hacks for vim
" https://github.com/scrooloose/syntastic
" Customization: _syntastic.vim
"Plugin 'scrooloose/syntastic'

"
" Asynchronous Lint Engine
" https://github.com/w0rp/ale
Plugin 'w0rp/ale'

"
" Vim Scratch - Unobtrusive scratch window
" https://github.com/mtth/scratch.vim
Plugin 'mtth/scratch.vim'

"
" Vim WebAPI - An Interface to WEB APIs
" https://github.com/mattn/webapi-vim
Plugin 'mattn/webapi-vim'

"
" Gist - Gist support for Vim
" https://github.com/mattn/gist-vim
" Customization: _gist.vim
Plugin 'mattn/gist-vim'

"
" Align - Align text, eqns, declarations, tables etc
" https://github.com/vim-scripts/Align
Plugin 'vim-scripts/Align'

"
" Vim Add-on MW Utils - Interpret a file by function and cache file automatically
" https://github.com/MarcWeber/vim-addon-mw-utils
Plugin 'MarcWeber/vim-addon-mw-utils'

"
" Tlib Vim - Some utility functions for VIM
" https://github.com/tomtom/tlib_vim
Plugin 'tomtom/tlib_vim'

"
" UltiSnips
" https://github.com/SirVer/ultisnips
Plugin 'SirVer/ultisnips'

"
" Vim Surround - Surround selection with chosen characters
" https://github.com/tpope/vim-surround
Plugin 'tpope/vim-surround'

"
" DelimitMate - Automatic closing of quotes, parenthesis, brackets, etc.
" https://github.com/Raimondi/delimitMate
Plugin 'Raimondi/delimitMate'

"
" Emmet
" https://github.com/mattn/emmet-vim
" Customization: _emmet.vim
Plugin 'mattn/emmet-vim'

"
" Match Tag - Highlight matching HTML tag
" https://github.com/gregsexton/MatchTag
Plugin 'gregsexton/MatchTag'

"
" Vim Easy Grep
" https://github.com/dkprice/vim-easygrep
Plugin 'dkprice/vim-easygrep'

"
" You Complete Me - Autocomplete for code
" Needs MacVim with python 2.X support
" Customization: _you_complete_me.vim
Plugin 'Valloric/YouCompleteMe'

"
" Tern - This is a Vim plugin that provides Tern-based JavaScript editing support.
" NOTE: Currently disabled as it is interacting poorly with Tsuquyomi
" https://github.com/ternjs/tern_for_vim
"Plugin 'ternjs/tern_for_vim'

"
" Tagbar - Browse tags of current document
" http://majutsushi.github.io/tagbar/
Plugin 'majutsushi/tagbar'

"
" Vim Javascript
" https://github.com/pangloss/vim-javascript
" Customization: _vim_javascript.vim
Plugin 'pangloss/vim-javascript'

"
" Javsacript Libraries Syntax - Support for various JS languages/frameworks
" https://github.com/othree/javascript-libraries-syntax.vim
" Customization: _javascript_libraries_sytax.vim
Plugin 'othree/javascript-libraries-syntax.vim'

"
" Taboo - Tab management
" https://github.com/gcmt/taboo.vim
Plugin 'gcmt/taboo.vim'

"
" Vim Indent Guides
" https://github.com/nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

"
" Mustache/Handlebars support
" https://github.com/mustache/vim-mustache-handlebars
Plugin 'mustache/vim-mustache-handlebars'

"
" WakaTime
" https://github.com/wakatime/vim-wakatime
Plugin 'wakatime/vim-wakatime'

"
" Relative/Absolute line numbers
" https://github.com/myusuf3/numbers.vim/
Plugin 'myusuf3/numbers.vim'

"
" Enable Vim 'repeat' for more than native commands
" https://github.com/tpope/vim-repeat
Plugin 'tpope/vim-repeat'

"
" Enable Markdown syntax, matching and mapping
" https://github.com/plasticboy/vim-markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"
" Lean & mean status/tabline for vim that's light as air.
" https://github.com/bling/vim-airline
" Customization: _airline.vim
Plugin 'bling/vim-airline'

"
" Airline Themes
" https://github.com/vim-airline/vim-airline-themes/blob/master/README.md
Plugin 'vim-airline/vim-airline-themes'

"
" ctrlp
" Fuzzy file, buffer, mru, tag, etc finder
" https://github.com/ctrlpvim/ctrlp.vim
" Customization: _ctrl_p.vim
Plugin 'ctrlpvim/ctrlp.vim'

"
" Git add, git commit, git pull, git push all in one command, without leaving vim.
" https://github.com/peterhurford/send.vim
Plugin 'peterhurford/send.vim'

"
" Emoji in Vim.
" https://github.com/junegunn/vim-emoji
" Customization: _vim_emoji.vim
Plugin 'junegunn/vim-emoji'

"
" HTML5 Support
" https://github.com/othree/html5.vim
Plugin 'othree/html5.vim'

"
" TypeScript Syntax
" https://github.com/leafgarland/typescript-vim
Plugin 'leafgarland/typescript-vim'

"
" Tsuquyomi (typescript IDE-ish features)
" https://github.com/Quramy/tsuquyomi
"Plugin 'Quramy/tsuquyomi'

"
" Angular CLI commands support for vim
" https://github.com/bdauria/angular-cli.vim
Plugin 'bdauria/angular-cli.vim'

"
" GitHub extension for fugitive.vim
" https://github.com/tpope/vim-rhubarb
Plugin 'tpope/vim-rhubarb'

"
" Vim syntax file & snippets for Docker's Dockerfile
" https://github.com/ekalinin/Dockerfile.vim
Plugin 'ekalinin/Dockerfile.vim'

"
" Show a diff using Vim its sign column.
" https://github.com/mhinz/vim-signify
Plugin 'mhinz/vim-signify'

"
" Asynchronous grep plugin for Vim
" https://github.com/ramele/agrep
Plugin 'ramele/agrep'


" Ruby on Rails power tools
" https://github.com/tpope/vim-rails
Plugin 'tpope/vim-rails'


call vundle#end()

