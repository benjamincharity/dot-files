let g:ack_default_options = ' --ignore-dir=bower_components --ignore-dir=.tmp --ignore-dir=app/common/assets --ignore-dir=dist --ignore-file=is:_supersonicons.scss  --ignore-file=is:ionicons.svg --ignore-dir=www --ignore-dir=platforms --ignore-dir=plugins --ignore-dir=node_modules  --ignore-dir=api  --ignore-dir=log'
let g:ackhighlight = 1
let g:ack_autofold_results = 0


" Use silver searcher
" https://github.com/ggreer/the_silver_searcher#editor-integration
let g:ackprg = 'ag --nogroup --nocolor --column'

