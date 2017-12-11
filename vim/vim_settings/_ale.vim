"
" Define which linters to use
let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tslint'], 'html': ['htmlhint-ng2']}

"
" Enable completion where available.
let g:ale_completion_enabled = 1

"
" Custom error symbols
let g:ale_sign_error = '❌'
let g:ale_sign_style_error = '👕'
let g:ale_sign_warning = '🚧'
let g:ale_sign_style_warning = '💩'
let g:ale_sign_info = 'ℹ'

"
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
