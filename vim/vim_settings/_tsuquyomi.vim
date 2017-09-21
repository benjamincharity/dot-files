" Use single quotes for imports
let g:tsuquyomi_single_quote_import = 1

" Use syntastic for displaying syntax and semantics errors instead of vim's default quickfix window
let g:tsuquyomi_disable_quickfix = 1

" Disable default mapping so that <C-^> to last buffer isn't broken
let g:tsuquyomi_disable_default_mappings = 1

" Enable JS files support
let g:tsuquyomi_javascript_support = 1

" Customize spacing inside {} for imports
" Currently undocumented: https://github.com/Quramy/tsuquyomi/pull/114
let g:tsuquyomi_import_curly_spacing = 1

" Fix for vim freezing (doesn't seem to work for me)
let g:tsuquyomi_use_vimproc = 1

" Allow Tsuquyomi to import the shortest path instead of the complete one
let g:tsuquyomi_shortest_import_path = 1
