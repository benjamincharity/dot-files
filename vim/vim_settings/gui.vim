"
" Enable 256 colors
set t_Co=256

"
" Theme
color dusk

"
" Typeface & size
set guifont=Monaco:h14

"
" Enable syntax highlighting and allow Vim to overrule custom settings
syntax on

"
" Hide buffers rather than closing them
set hidden

"
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

"
" Tabs
" ===========================
" http://tedlogan.com/techblog3.html
" A tab equals 2 columns
set tabstop=2
" A tab also equals 2 columns in insert mode
set softtabstop=2
" When indenting lines or blocks of code, move 2 columns at a time
set shiftwidth=2
" Expand tabs into the correct number of columns
set expandtab

"
" Indentation
" ===========================
" http://usevim.com/2012/08/03/vim101-indentation/
" Copy the indentation level from the previous line
set autoindent
" Auto indent when starting a new line
set smartindent

"
" Searching
" ===========================
" Jump to the next match as you type
set incsearch
" Highlight search matches
set hlsearch
" Ignore case when searching
set ignorecase
" Ignore case if the search pattern is all lowercase, otherwise respect casing
set smartcase
" When jumping to a search result, make sure at least 3 lines are visible on
" either side of the result
set scrolloff=3



"
" Highlight any characters that pass the 80 character mark
" needed to wrap these commands like this for some reason...
" see: http://stackoverflow.com/questions/395114/vim-syntax-coloring-how-do-i-highlight-long-lines-only/10993757#10993757
augroup vimrc_autocmds
  autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
  autocmd BufEnter * match OverLength /\%80v.*/
augroup END


"
" Enable mouse support
" http://www.reasonablyopinionated.com/2011/11/mouse-support-for-terminalapp-scrolling.html
if has("mouse") && !has("gui_macvim")
  set mouse=a
  set ttymouse=xterm2
  function! ToggleMouse()
    let m = &mouse
    if m ==# 'a'
      execute ":set mouse="
    else
      execute ":set mouse=a"
    endif
  endfunction
  map <Leader>m :call ToggleMouse()<CR>
endif

"
" Turn on autocomplete for spelling
set complete+=kspell

"
" Stylize spelling errors
hi SpellBad ctermfg=015 ctermbg=000 cterm=none guifg=#FE2E2E guibg=#F8E0E0 gui=none

"
" Cursor line/column
" Show the cursor line
set cursorline
" Show the cursor column
set cursorcolumn
" Style the cursor line
highlight cursorline term=NONE, cterm=NONE, guibg=#4444, ctermbg=235
" Style the cursor column
highlight cursorcolumn guibg=#4444, ctermbg=235


"
" Show information about the current command in the bottom bar
set showcmd

"
" Show the current mode
set showmode

"
" Set the clipboard to use the global OS clipboard
set clipboard=unnamed

"
" Enable command line completion
set wildmenu
" Define the method of completion
set wildmode=list:longest

"
" Show the current line/column/virtual column/relative position
set ruler

"
" Define which characters to show
" http://usevim.com/2013/02/27/understanding-listchars/
set list
" Define how to represent specific characters
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+

"
" Make lines wrap if they are too long
set wrap

"
" Automatically update the window title with the current filename
set title

"
" Enable vim's internal visual bell
" http://vim.wikia.com/wiki/Disable_beeping
set visualbell

"
" Vim backups/swap files
" http://scratching.psybermonkey.net/2011/02/vim-how-to-stop-vim-creating-tilde.html
" Disable vim backups
set nobackup
set nowritebackup
" Define the vim backup directory
set backupdir=~/.vim/swap_files/
" Define the vim swap files directory
set directory=~/.vim/swap_files/

"
" Auto-reload (unedited) file if it is changed elsewhere
set autoread


"
" Status bar
" Customize the status line
"set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{rvm#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
" Always show the status bar
set laststatus=2

"
" Enable loading the plugin files for specific file types
" (needed for JSLint)
filetype plugin on
" Enable loading custom indent files for specific file types
filetype plugin indent on

"
" Remember more commands and search history
set history=1000
" Use many undo levels
set undolevels=1000

"
" Save folds when a file is closed
autocmd BufWinLeave *.* mkview
"Reload folds when a file is opened
autocmd BufWinEnter *.* silent loadview

"
" Show line numbers
set number

"
" save whenever you lose focus
au FocusLost * :wa

