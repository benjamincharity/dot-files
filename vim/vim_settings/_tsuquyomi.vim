" Use single quotes for imports
let g:tsuquyomi_single_quote_import = 1

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
