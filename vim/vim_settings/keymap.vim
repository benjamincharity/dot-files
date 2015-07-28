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
" Set the line wrap to 100 characters
nnoremap <Leader>1 :set tw=100<CR>

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
nmap <silent> <leader>ev :e $MYVIMRC<CR>

"
" Source vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"
" Remove all trailing spaces
nmap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

"
" Show register (clipboard)
map <leader>rr :reg<CR>

"
" Reload snippets
"map <leader>rs :call ReloadSnippets(&filetype)<CR>

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
map <leader>tn :tabnew<CR>
map <leader>te :tabedit
map <leader>tc :tabclose<CR>
map <leader>to :tabonly<CR>
map <leader>tn :tabnext<CR>
map <leader>tp :tabprevious<CR>
map <leader>tf :tabfirst<CR>
map <leader>tl :tablast<CR>
map <leader>tm :tabmove

"
" Open the file in Chrome
nnoremap <leader>C :silent !open -a 'Google Chrome.app' '%:p'<CR>

"
" Toggle NerdTree
noremap <leader>d :NERDTreeToggle<CR>

"
" Clear search highlights
noremap <leader>l :noh<CR>

" Ack (search) project for word under cursor
noremap <Leader>a :Ack <cword><CR>

"
" Compile coffeescript to scratch buffer in vertical split
noremap <leader>cp :CoffeeCompile vert<CR>

"
" Sort CSS styles inside {}
noremap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

"
" Sort selected lines
noremap <leader>S :sort<CR>

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
nnoremap <leader>m :silent !open -a Marked.app '%:p'<CR>

"
" Toggle paste mode
set pastetoggle=<F2>

"
" Allow cursor to move up/down to the next row (not just the next line)
nnoremap j gj
nnoremap k gk
