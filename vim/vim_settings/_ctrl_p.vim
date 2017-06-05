let g:ctrlp_map = '<D-t>'
let g:ctrlp_cmd = 'CtrlP'

let g:ctrlp_custom_ignore='coverage'

"let g:ctrlp_user_command = {
"\ 'types': {
"\ 1: ['.git', 'cd %s && git ls-files'],
"\ },
"\ 'fallback': 'ag %s -i --nocolor --nogroup --hidden
"\ --ignore out
"\ --ignore .git
"\ --ignore .tmp
"\ --ignore .svn
"\ --ignore .DS_Store
"\ --ignore "coverage/*"
"\ --ignore "platforms/*"
"\ --ignore "build/*"
"\ --ignore "documentation/*"
"\ --ignore "stylesguide/*"
"\ -g ""'
"\ }
