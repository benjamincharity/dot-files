set nocompatible
silent! call pathogen#runtime_append_all_bundles()

syntax on
filetype plugin indent on

set showcmd
set showmode

set backspace=indent,eol,start

set clipboard=unnamed
set t_Co=256

set hidden

set wildmenu
set wildmode=list:longest

set ignorecase
set smartcase

set number
set ruler

set incsearch
set hlsearch
set showmatch

set cursorline
set listchars=tab:>\ ,trail:•,extends:>,precedes:<,nbsp:+
set list

set wrap
set scrolloff=3

set title

set visualbell

set nobackup
set nowritebackup
set directory=~/.vim_backups//

"Theme
color molokai

"Move lines with alt + direction
nnoremap ∆ :m+<CR>==
nnoremap ˚ :m-2<CR>==
vnoremap ∆ :m'>+<CR>gv=gv
vnoremap ˚ :m-2<CR>gv=gv

"Autoindent
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2

"Set to auto read when a file is changed from the outside
set autoread

set laststatus=2
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Tab mappings.
map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

"NERDTree

"Toggle NERDTree
noremap <C-T> :NERDTreeToggle<CR>

"Make bookmarks Visible
let NERDTreeShowBookmarks = 1

"Enable Colors
let NERDChristmasTree = 1
"
"Get rid of trailing spaces
nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"Turn cursor column on for haml and sass
autocmd BufEnter *.haml setlocal cursorcolumn
autocmd BufEnter *.sass setlocal cursorcolumn
autocmd BufEnter *.scss setlocal cursorcolumn


au BufNewFile,BufRead Gemfile set filetype=ruby
au BufNewFile,BufRead *.j set filetype=objj

au BufNewFile,BufRead *.as set filetype=actionscript

"un-highlight searched text
nnoremap <C-L> :nohls<CR><C-L>
inoremap <C-L> <C-O>:nohls<CR>
