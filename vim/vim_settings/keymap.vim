"
" Remap the leader key to the spacebar
" http://karmanebula.com/technically-borked/2013/12/16/leader-key-as-space-capslock-as-esc
let mapleader=" "

"
" Quit window/split/buffer
nnoremap <Leader>q :q<CR>

"
" Write/save
nnoremap <Leader>w :w<CR>

"
" Set the line wrap to 80 characters
nnoremap <Leader>8 :set tw=80<CR>

"
" Set the line wrap to 0 characters
nnoremap <Leader>0 :set tw=0<CR>

"
" Toggle line numbers on/off
"nnoremap <Leader>n :NumbersToggle<CR>
"nnoremap <Leader>nn :NumbersOnOff<CR>

"
" Align selected text by a specific character
vmap + :call MyAlignConfig()<CR>gv :Align<CR>

"
" Align selected lines by `:`
noremap <F6> :Align :<CR>

"
" Open the tagbar
nmap <F8> :TagbarToggle<CR>

"
" Open vimrc
nmap <silent> <leader>ev :e $MYVIMRC<cr>

"
" Source vimrc
nmap <silent> <leader>sv :so $MYVIMRC<cr>

"
" Remove all trailing spaces
nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"
" Show register (clipboard)
map <leader>rr :reg<cr>

"
" Reload snippets
map <leader>rs :call ReloadSnippets(&filetype)<cr>

"
" Remap these since I always seem to type the wrong command in haste.
command! W w
command! Wa wa
command! WA wa

"
" Move lines with alt + direction
nnoremap ∆ :m+<CR>==
nnoremap ˚ :m-2<CR>==
vnoremap ∆ :m'>+<CR>gv=gv
vnoremap ˚ :m-2<CR>gv=gv

"
" Tab mappings
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

"
" Open the file in Chrome
nnoremap <leader>C :silent !open -a 'Google Chrome.app' '%:p'<cr>

"
" Toggle NerdTree
noremap <leader>d :NERDTreeToggle<CR>

"
" Clear search highlights
noremap <leader>l :noh<CR>

"
" Compile coffeescript to scratch buffer in vertical split
noremap <leader>cp :CoffeeCompile vert<cr>

"
" Sort CSS styles inside {}
noremap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

"
" Sort selected lines
noremap <leader>S :sort<cr>

"
" Directly jump to definition in SCSS/CSS from class/id in HTML
nnoremap <leader>] :call JumpToCSS()<CR>

"
" Easily move between splits/windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"
" Toggle cursor line/column highlighting
nnoremap <Leader>h :set cursorline! cursorcolumn!

"
" Open the file in marked.app
nnoremap <leader>m :silent !open -a Marked.app '%:p'<cr>

"
" Toggle paste mode
set pastetoggle=<F2>

"
" Allow cursor to move up/down to the next row (not just the next line)
nnoremap j gj
nnoremap k gk
