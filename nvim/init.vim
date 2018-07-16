
let g:python2_host_prog = '/usr/local/Cellar/python@2/2.7.15/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'


"===============================================================
" TAG: __plugins
" NeoVim Plugins

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.config/nvim/plugged')

" Asynchronous Lint Engine
" https://github.com/w0rp/ale
Plug 'w0rp/ale'

" Align - Align text, eqns, declarations, tables etc
" https://github.com/vim-scripts/Align
Plug 'vim-scripts/Align'

" Buffer Explorer
" https://github.com/jlanzarotta/bufexplorer
Plug 'jlanzarotta/bufexplorer'

" DelimitMate - Automatic closing of quotes, parenthesis, brackets, etc.
" https://github.com/Raimondi/delimitMate
Plug 'Raimondi/delimitMate'

" Vim syntax file & snippets for Docker's Dockerfile
" https://github.com/ekalinin/Dockerfile.vim
Plug 'ekalinin/Dockerfile.vim'

" Emmet
" https://github.com/mattn/emmet-vim
" Customization: _emmet.vim
Plug 'mattn/emmet-vim'

" File Search
" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" HTML5 Support
" https://github.com/othree/html5.vim
Plug 'othree/html5.vim'

" Javsacript Libraries Syntax - Support for various JS languages/frameworks
" https://github.com/othree/javascript-libraries-syntax.vim
" Customization: _javascript_libraries_sytax.vim
Plug 'othree/javascript-libraries-syntax.vim'

" Match Tag - Highlight matching HTML tag
" https://github.com/gregsexton/MatchTag
Plug 'gregsexton/MatchTag'

" Nerd Commenter - Powerful commenting tools
" https://github.com/scrooloose/nerdcommenter
" Customization: _nerd_commenter.vim
Plug 'scrooloose/nerdcommenter'

" NerdTree - Filesystem explorer
" https://github.com/scrooloose/nerdtree
" Customization: _nerd_tree.vim
Plug 'scrooloose/nerdtree'

" Relative/Absolute line numbers
" https://github.com/myusuf3/numbers.vim/
Plug 'myusuf3/numbers.vim'

" TypeScript Support"
" https://github.com/mhartington/nvim-typescript
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
" For async completion
Plug 'Shougo/deoplete.nvim'

" Themes
Plug 'gilgigilgil/anderson.vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'romainl/Apprentice'

" Supertab (needed for ultisnips/deoplete to work together) - Perform all your vim insert mode completions with Tab
" https://github.com/ervandew/supertab
Plug 'ervandew/supertab'

" UltiSnips
" https://github.com/SirVer/ultisnips
Plug 'SirVer/ultisnips'

" Lean & mean status/tabline for vim that's light as air.
" https://github.com/bling/vim-airline
" Customization: _airline.vim
Plug 'vim-airline/vim-airline'

" Airline Themes
" https://github.com/vim-airline/vim-airline-themes/blob/master/README.md
Plug 'vim-airline/vim-airline-themes'

" Emoji in Vim.
" https://github.com/junegunn/vim-emoji
" Customization: _vim_emoji.vim
Plug 'junegunn/vim-emoji'

" Vim Fugitive - The best Git wrapper of all time.
" https://github.com/tpope/vim-fugitive
" Customization: _fugitive.vim
Plug 'tpope/vim-fugitive'

" Vim Indent Guides
" https://github.com/nathanaelkane/vim-indent-guides
Plug 'nathanaelkane/vim-indent-guides'

" Vim Javascript
" https://github.com/pangloss/vim-javascript
" Customization: _vim_javascript.vim
Plug 'pangloss/vim-javascript'

" Vim Lessmess - Remove white-space mess from files in ViM
" https://github.com/mboughaba/vim-lessmess
Plug 'mboughaba/vim-lessmess'

" Enable Markdown syntax, matching and mapping
" https://github.com/plasticboy/vim-markdown
Plug 'plasticboy/vim-markdown'
Plug 'godlygeek/tabular'

" Mustache/Handlebars support
" https://github.com/mustache/vim-mustache-handlebars
Plug 'mustache/vim-mustache-handlebars'

" Enable Vim 'repeat' for more than native commands
" https://github.com/tpope/vim-repeat
Plug 'tpope/vim-repeat'

" GitHub extension for fugitive.vim
" https://github.com/tpope/vim-rhubarb
Plug 'tpope/vim-rhubarb'

" SASS lint for Syntastic
" https://github.com/gcorne/vim-sass-lint
" Customization: _vim_sass_lint.vim
Plug 'gcorne/vim-sass-lint'

" Show a diff using Vim its sign column.
" https://github.com/mhinz/vim-signify
Plug 'mhinz/vim-signify'

" Speeddating - use CTRL-A/CTRL-X to increment dates, times, and more
" https://github.com/tpope/vim-speeddating
Plug 'tpope/vim-speeddating'

" Vim Surround - Surround selection with chosen characters
" https://github.com/tpope/vim-surround
Plug 'tpope/vim-surround'

" WakaTime
" https://github.com/wakatime/vim-wakatime
Plug 'wakatime/vim-wakatime'

" TypeScript syntax"
" https://github.com/HerringtonDarkholme/yats.vim
Plug 'HerringtonDarkholme/yats.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()


"===============================================================
" TAG: __settings
" NeoVim Plugin Settings

" Airline
" Set a theme
let g:airline_theme='oceanicnext'
" Automatically populate the g:airline_symbols dictionary with the powerline
" symbols
let g:airline_powerline_fonts = 1

" Ale
" Define which linters to use
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tslint', 'tsserver', 'typecheck'], 'html': ['htmlhint-ng2']}
" Enable completion where available.
let g:ale_completion_enabled = 1
" Custom error symbols
let g:ale_sign_error = "⨉"
let g:ale_sign_warning = "⚠"
let g:ale_sign_style_warning = '⚠'
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
" Turn tslint errors into warnings
let g:ale_type_map = {'tslint': {'ES': 'WS', 'E': 'WS'}}
" Leave the sign column always visible
let g:ale_sign_column_always = 1
" Note: Setting any custom highlights just removes all colors from nvim symbols
" highlight ALEErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" highlight ALEStyleErrorSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" highlight ALEStyleWarningSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" highlight ALEWarningSign ctermfg=9 ctermbg=15 guifg=#C30500 guibg=#F5F5F5
" Should ALE highlight the entire line when an error is found
let g:ale_set_highlights = 1

" AngularCLI
" Change the stylesheet format
let g:angular_cli_stylesheet_format = 'scss'
" Init the plugin for TypeScript and HTML files
"autocmd FileType typescript,html call angular_cli#init()

" TypeScript
" Display type info for symbol under cursor in echo area
let g:nvim_typescript#type_info_on_hold = 1
" Deoplete
" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1
" https://github.com/SirVer/ultisnips/issues/517#issuecomment-268518251
call deoplete#custom#source('ultisnips', 'matchers', ['matcher_fuzzy'])

" Emmet
let g:user_emmet_leader_key='<C-e>'

" Emoji
" Enable emoji completion
" NOTE: Currently disabled as it was adding all possibilities to autocomplete bubble even without :
"set omnifunc=emoji#complete

" Fugitive
" Automatically opens the quickfix window after :Ggrep
autocmd QuickFixCmdPost *grep* cwindo

" FZF
" Trigger FZF with command+t
noremap <C-t> :FZF<CR>
" [Commands] --expect expression for directly executing the command
" NOTE: Why isn't this working?
"let g:fzf_commands_expect = 'ctrl-t'
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Indent Guides
" Enable by default
let g:indent_guides_enable_on_vim_startup = 0

" JS libraries syntax
let g:used_javascript_libs = 'lodash,jquery,angularjs'

" JS
let g:javascript_enable_domhtmlcss = '1'

" Markdown
let g:vim_markdown_folding_disabled = 1

" NerdCommenter
" Force SASS files to start with the alternate delimeter (//) rather than the standard (/**/)
let g:NERDAltDelims_sass = 1

" NerdTree
" Make bookmarks Visible
let NERDTreeShowBookmarks = 1
" Enable Colors
let NERDChristmasTree = 1
" Set custom location for bookmarks file
let NERDTreeBookmarksFile=expand("$HOME/.dot-files/.NERDTreeBookmarks")

" Numbers
" Don't affect certain plugins
let g:numbers_exclude = ['nerdtree']

" Sass Lint
" Define path to config
let g:sass_lint_config = '/Users/bc/.sass-lint.yml'

" Ultisnips
" Define snippet location
let g:UltiSnipsSnippetDirectories=[$HOME.'/.dot-files/snippets']
" If you want :UltiSnipsEdit to split your window
let g:UltiSnipsEditSplit="vertical"
" Trigger configuration
" https://github.com/simonweil/dotfiles/blob/master/nvimrc#L29-L85
" Don't map any tabs, I'll do it later
let g:UltiSnipsExpandTrigger = '<NOP>'
let g:UltiSnipsJumpForwardTrigger = '<NOP>'
let g:UltiSnipsJumpBackwardTrigger = '<NOP>'
let g:SuperTabMappingForward = '<NOP>'
let g:SuperTabMappingBackward = '<NOP>'
" Don't unmap my mappings
let g:UltiSnipsMappingsToIgnore = [ "SmartTab", "SmartShiftTab" ]

" Make <CR> smart
let g:ulti_expand_res = 0
function! Ulti_ExpandOrEnter()
  " First try to expand a snippet
  call UltiSnips#ExpandSnippet()
  if g:ulti_expand_res
    " if successful, just return
    return ''
  elseif pumvisible()
    " if in completion menu - just close it and leave the cursor at the
    " end of the completion
    return deoplete#mappings#close_popup()
  else
    " otherwise, just do an "enter"
    return "\<return>"
  endif
endfunction
inoremap <return> <C-R>=Ulti_ExpandOrEnter()<CR>

" Enable tabbing and shift-tabbing through list of results
function! g:SmartTab()
  if pumvisible()
    return SuperTab("p")
  else
    call UltiSnips#JumpForwards()
    if g:ulti_jump_forwards_res == 0
      return SuperTab("p")
    endif
    return ''
  endif
endfunction
inoremap <silent> <tab> <C-R>=g:SmartTab()<cr>
snoremap <silent> <tab> <Esc>:call g:SmartTab()<cr>

function! g:SmartShiftTab()
  if pumvisible()
    return SuperTab("n")
  else
    call UltiSnips#JumpBackwards()
    if g:ulti_jump_backwards_res == 0
      return SuperTab("n")
    endif
    return ''
  endif
endfunction
inoremap <silent> <s-tab> <C-R>=g:SmartShiftTab()<cr>
snoremap <silent> <s-tab> <Esc>:call g:SmartShiftTab()<cr>

" Signify
" Tell signify to only try checking with git
let g:signify_vcs_list=['git']


"===============================================================
" TAG: gui

" Enable true color support
if (has("termguicolors"))
 set termguicolors
endif

" Theme
set background=dark
colorscheme OceanicNext

" Enable syntax highlighting and allow Vim to overrule custom settings
syntax on
syntax enable

" Typeface & size
set guifont=Fira\ Code:h16
"
" Possible Powerline enabled fonts:
"   Anonymous\ Pro\ for\ Powerline
"   DejaVu\ Sans\ Mono\ for\ Powerline
"   Droid\ Sans\ Mono\ Dotted\ for\ Powerline
"   Droid\ Sans\ Mono\ for\ Powerline
"   Droid\ Sans\ Mono\ Slashed\ for\ Powerline
"   Fira\ Mono\ for\ Powerline
"   Fira\ Mono\ Medium\ for\ Powerline
"   Inconsolata\ for\ Powerline
"   Inconsolata-dz\ for\ Powerline
"   Inconsolata-g\ for\ Powerline
"   Liberation\ Mono\ for\ Powerline
"   Meslo\ LG\ L\ DZ\ for\ Powerline
"   Meslo\ LG\ L\ for\ Powerline
"   Meslo\ LG\ M\ DZ\ for\ Powerline
"   Meslo\ LG\ M\ for\ Powerline
"   Meslo\ LG\ S\ DZ\ for\ Powerline
"   Meslo\ LG\ S\ for\ Powerline
"   monofur\ for\ Powerline
"   Source\ Code\ Pro\ for\ Powerline
"   Ubuntu\ Mono\ derivative\ Powerline


" Hide buffers rather than closing them
set hidden

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Set a standard text width
set textwidth=140

" Tabs
" http://tedlogan.com/techblog3.html
" A tab equals 2 columns
set tabstop=2
" A tab also equals 2 columns in insert mode
set softtabstop=2
" When indenting lines or blocks of code, move 2 columns at a time
set shiftwidth=2
" Expand tabs into the correct number of columns
set expandtab

" Indentation
" http://usevim.com/2012/08/03/vim101-indentation/
" Copy the indentation level from the previous line
set autoindent
" Auto indent when starting a new line
set smartindent

" Searching
" Jump to the next match as you type
set incsearch
" Highlight search matches
set hlsearch
" Ignore case when searching
set ignorecase
" Ignore case if the search pattern is all lowercase, otherwise respect casing
set smartcase
" When jumping to a search result, make sure at least 3 lines are visible on
" either side of the resulta
set scrolloff=3

" Enable mouse support
set mouse=a

" Highlight any characters that pass the 140 character mark
" needed to wrap these commands like this for some reason...
" see: http://stackoverflow.com/questions/395114/vim-syntax-coloring-how-do-i-highlight-long-lines-only/10993757#10993757
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=red guibg=gray28
  autocmd BufEnter * match OverLength /\%140v.*/
augroup END

" Turn on autocomplete for spelling
set complete+=kspell

" Stylize spelling errors
hi SpellBad ctermfg=015 ctermbg=000 cterm=none guifg=#FE2E2E guibg=#F8E0E0 gui=none

" Cursor line/column
" Show the cursor line
set cursorline
" Show the cursor column
set cursorcolumn
" Style the cursor line
highlight cursorline term=NONE, cterm=NONE, ctermbg=238
" Style the cursor column
highlight cursorcolumn ctermbg=238

" Show information about the current command in the bottom bar
set showcmd

" Show the current mode
set showmode

" Set the clipboard to use the global OS clipboard
set clipboard=unnamed

" Enable command line completion
set wildmenu
" Define the method of completion
set wildmode=list:longest

" Show the current line/column/virtual column/relative position
set ruler

" Define which characters to show
" http://usevim.com/2013/02/27/understanding-listchars/
set list
" Define how to represent specific characters
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+

" Make lines wrap if they are too long
set wrap

" Automatically update the window title with the current filename
set title

" Enable vim's internal visual bell
" http://vim.wikia.com/wiki/Disable_beeping
set visualbell

" Vim backups/swap files
" http://scratching.psybermonkey.net/2011/02/vim-how-to-stop-vim-creating-tilde.html
" Disable vim backups
set nobackup
set nowritebackup
" Define the vim backup directory
set backupdir=~/.config/nvim/swap-files/
" Define the vim swap files directory
set swapfile
set directory=~/.config/nvim/swap-files/

" Auto-reload (unedited) file if it is changed elsewhere
set autoread

" Always show the status bar
set laststatus=2

" Enable loading the plugin files for specific file types
filetype plugin on
" Enable loading custom indent files for specific file types
filetype plugin indent on

" Remember more commands and search history
set history=1000
" Use many undo levels
set undolevels=1000

" Show line numbers
set number

" Color overrides
hi Search gui=NONE guifg=ivory guibg=CadetBlue4
hi SpellBad guifg=#f34923 guibg=#152132
hi Search guibg=#131c2b
hi MatchParen guibg=#273c5a

" Triger `autoread` when files changes on disk
" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" https://vi.stackexchange.com/questions/13692/prevent-focusgained-autocmd-running-in-command-line-editing-mode
autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
" Notification after file change
" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
autocmd FileChangedShellPost *
  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None

" Increase this time since it is used to switch the TS error message with TS type info.
" This also determines how quickly a file is saved to a buffer
set updatetime=4000

"===============================================================
" TAG: keymap

" Remap the leader key to the spacebar
map <SPACE> <leader>
" Quit window/split/buffer
nnoremap <Leader>q :q<CR>
" Write/save
nnoremap <Leader>w :w<CR>
" Set the line wrap to 100 characters
nnoremap <Leader>1 :set tw=100<CR>
" Set the line wrap to 0 characters
nnoremap <Leader>0 :set tw=0<CR>
" Align selected text by a specific character
vmap + :call MyAlignConfig()<CR>gv :Align<CR>
" Align selected lines by `:`
noremap <F6> :Align :<CR>
" Open vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" Source vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Remove all trailing spaces
nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
" Sort CSS styles inside {}
noremap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>
" Sort selected lines
noremap <leader>S :sort<CR>
" Show register (clipboard)
map <leader>rr :reg<CR>
" Move lines with alt + direction
nnoremap ∆ :m+<CR>==
nnoremap ˚ :m-2<CR>==
vnoremap ∆ :m'>+<CR>gv=gv
vnoremap ˚ :m-2<CR>gv=gv
" Tab mappings
map <leader>tn :tabnew<CR>
map <leader>te :tabedit
map <leader>tc :tabclose<CR>
map <leader>to :tabonly<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
map <leader>tf :tabfirst<CR>
map <leader>tl :tablast<CR>
map <leader>tm :tabmove
" Toggle NerdTree
noremap <leader>d :NERDTreeToggle<CR>
" Locate current file in NERDTree
map <leader>FF :NERDTreeFind<cr>
" Clear search highlights
noremap <leader>l :noh<CR>
" Ack (search) project for word under cursor
noremap <Leader>a :execute 'Agrep -r <cword> .'<CR>
" Directly jump to definition in SCSS/CSS from class/id in HTML
nnoremap <leader>] :call JumpToCSS()<CR>
" Easily move between splits/windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Toggle cursor line/column highlighting
nnoremap <Leader>h :set cursorline! cursorcolumn!<CR>
" Open the file in Chrome
nnoremap <leader>C :silent !open -a 'Google Chrome.app' '%:p'<CR>
" Open the file in marked.app
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<CR>
" Format a markdown table
nnoremap <leader>mt :TableFormat<CR>
" Open the file under the cursor in a new vertical split
map <leader>ggf :vertical wincmd f<CR>
" Toggle paste mode
set pastetoggle=<F2>
" Allow cursor to move up/down to the next row (not just the next line)
nnoremap j gj
nnoremap k gk
" Fold between brackets
map <leader>ff $zf%<CR>
" Convert all emoji references (:smile:) into the actual emoji (😃)
map <leader>re :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>
" List all TODOs
noremap <Leader>to :noautocmd vimgrep /TODO/j **/*.ts<CR>:cw<CR>
" Fix all ALE reported errors
nmap <silent> <leader>af :ALEFix<cr>
" Use tab as completion for deoplete
"inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" Source vimrc
nnoremap <leader>rvc :source $MYVIMRC<CR>
" Typescript
nmap <leader>lr :TSRename<CR>
nmap <leader>lf :TSRefs<CR>
nmap <leader>ld :TSTypeDef<CR>
nmap <leader>lds :TSDefPreview<CR>
nmap <leader>ti :TSImport<CR>

"
" Overrides and Fallbacks
" 'W' should be converted to 'w' if on the command line and not part of a word
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))
" 'Wa' should be converted to 'wa' if on the command line and not part of a word
cnoreabbrev <expr> Wa ((getcmdtype() is# ':' && getcmdline() is# 'Wa')?('wa'):('Wa'))

"
" Custom
" Map `jk` to escape to make things easier for Brian M.
imap jk <Esc>
