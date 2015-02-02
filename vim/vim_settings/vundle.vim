" Set the runtime path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
" Initialize
call vundle#begin()

"
" Vundle - Plug-in manager for Vim
" https://github.com/gmarik/Vundle.vim
Plugin 'gmarik/Vundle.vim'

"
" Nerd Commenter - Powerful commenting tools
" https://github.com/scrooloose/nerdcommenter
Plugin 'scrooloose/nerdcommenter'

"
" NerdTree - Filesystem explorer
" https://github.com/scrooloose/nerdtree
" Customization: nerd_tree.vim
Plugin 'scrooloose/nerdtree'

"
" Buffer Explorer
" https://github.com/jlanzarotta/bufexplorer
Plugin 'jlanzarotta/bufexplorer'

"
" JavaScript Lint
" https://github.com/joestelmach/lint.vim
" Customization: lint.vim
Plugin 'joestelmach/lint.vim'

"
" Vim CoffeeScript
" https://github.com/kchmck/vim-coffee-script
Plugin 'kchmck/vim-coffee-script'

" Vim Scratch - Unobtrusive scratch window
" https://github.com/mtth/scratch.vim
Plugin 'mtth/scratch.vim'

"
" Gist - Gist support for Vim
" https://github.com/mattn/gist-vim
Plugin 'mattn/gist-vim'

"
" Ack - Replacement for Grep
" https://github.com/mileszs/ack.vim
Plugin 'mileszs/ack.vim'

"
" Align - Align text, eqns, declarations, tables etc
" https://github.com/vim-scripts/Align
Plugin 'vim-scripts/Align'

"
" Snipmate - Vim snippets
" https://github.com/msanders/snipmate.vim
" NOTE: Apparently dead repo
Plugin 'msanders/snipmate.vim'

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
" Customization: emmet.vim
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
" CtrlP - Fuzzy file finder
" https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'

"
" You Complete Me - Autocomplete for code
" Needs MacVim with python 2.X support
Plugin 'Valloric/YouCompleteMe'

"
" Tern for Vim - Needed for Tagbar
" https://github.com/marijnh/tern_for_vim
Plugin 'marijnh/tern_for_vim'

"
" Tagbar - Browse tags of current document
" http://majutsushi.github.io/tagbar/
Plugin 'majutsushi/tagbar'

"
" Vim Javascript
" https://github.com/pangloss/vim-javascript
" Customization: vim_javascript.vim
Plugin 'pangloss/vim-javascript'

"
" Javsacript Libraries Syntax - Support for various JS languages/frameworks
" https://github.com/othree/javascript-libraries-syntax.vim
" Customization: javascript_libraries_sytax.vim
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


call vundle#end()
