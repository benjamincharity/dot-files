"
" Remap the leader key to the spacebar
map <space> \

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
" Sort CSS styles inside {}
noremap <F7> :g#\({\n\)\@<=#.,/}/sort<CR>

"
" Sort selected lines
noremap <leader>S :sort<CR>

"
" Show register (clipboard)
map <leader>rr :reg<CR>

"
" Reload snippets
"map <leader>rs :call ReloadSnippets(&filetype)<CR>

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
"locate current file in NERDTree
map <leader>FF :NERDTreeFind<cr>

"
" Clear search highlights
noremap <leader>l :noh<CR>

" Ack (search) project for word under cursor
noremap <Leader>a :Ack <cword><CR>

"
" Compile coffeescript to scratch buffer in vertical split
noremap <leader>cp :CoffeeCompile vert<CR>

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
nnoremap <leader>m :silent !open -a Marked\ 2.app '%:p'<CR>

"
" Toggle paste mode
set pastetoggle=<F2>

"
" Allow cursor to move up/down to the next row (not just the next line)
nnoremap j gj
nnoremap k gk

"
" Remap Command-T
map <D-t> :CommandT<CR>
map <D-T> :CommandTBuffer<CR>

"
" Fold between brackets
map <leader>ff $zf%<CR>

"
" Tern
" Jump to definition
map <leader>td :TernDef<CR>
" Look at docs
map <leader>tD :TernDef<CR>
" Find/Navigate references
map <leader>tr :TernRefs<CR>
" Rename variable
map <leader>tR :TernRename<CR>
" Find the type
map <leader>tT :TernType<CR>


"
" Convert all emoji references (:smile:) into the actual emoji (😃)
map <leader>re :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>



"
" Overrides and Fallbacks
"

" 'W' should be converted to 'w' if on the command line and not part of a word
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" 'Wa' should be converted to 'wa' if on the command line and not part of a word
cnoreabbrev <expr> Wa ((getcmdtype() is# ':' && getcmdline() is# 'Wa')?('wa'):('Wa'))

