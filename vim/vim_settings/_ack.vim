" NOTE: Currently not in use
let g:ackhighlight = 1
let g:ack_autofold_results = 0
let g:ack_use_cword_for_empty_search = 1

" Use silver searcher
" https://github.com/ggreer/the_silver_searcher#editor-integration
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column --ignore-dir=bower_components --ignore-dir=.tmp --ignore-dir=tmp --ignore-dir=dist --ignore-dir=www --ignore-dir=node_modules --ignore-dir=.bundle --ignore-dir=coverage --ignore-dir=log'
endif
