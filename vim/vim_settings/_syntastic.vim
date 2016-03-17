"
" Recommended base settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1

"
" Check on open
let g:syntastic_check_on_open = 1

"
" Check on file save
let g:syntastic_check_on_wq = 1

"
"
" Tell Syntastic which checker to use
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = ['scss_lint']

"
" Enable syntax highlighting on errors
let g:syntastic_enable_highlighting = 1

"
" Display errors from all checkers together
let g:syntastic_aggregate_errors = 0

"
" Change highlight colors
"highlight link SyntasticError SpellBad
"highlight link SyntasticWarning SpellCap

hi SpellBad gui=undercurl guisp=LavenderBlush1 guifg=fg guibg=SteelBlue3


"
" HTML
"
" Use the HTML5 version of Tidy
let g:syntastic_html_tidy_exec = 'tidy5'

" Errors to ignore
let g:syntastic_html_tidy_ignore_errors=[
  \ "proprietary attribute",
  \ "trimming empty <",
  \ "unescaped &",
  \ "lacks \"action",
  \ "is not recognized!",
  \ "discarding unexpected",
  \ "<img> lacks \"src\" attribute",
  \ "plain text isn't allowed in <head> elements",
  \ "<script> escaping malformed URI reference",
  \ "<a> escaping malformed URI reference",
  \ "<input> attribute \"id\" has invalid value",
  \ "['Authorization'] is better written in dot notation.",
  \ "<ng-include> discarding whitespace in URI reference",
  \ "<ng-include> discarding newline in URI reference",
  \ "<article> attribute \"id\" has invalid value \"js_item_{{ $index }}\""
  \ ]
