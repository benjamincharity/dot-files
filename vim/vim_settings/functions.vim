
"
" Directly jump to definition in SCSS/CSS from class/id in HTML
" http://luxiyalu.com/vim-ctags-for-js-less/
function! JumpToCSS()
  let id_pos = searchpos("id", "nb", line('.'))[1]
  let class_pos = searchpos("class", "nb", line('.'))[1]

  if class_pos > 0 || id_pos > 0
    if class_pos < id_pos
      execute ":vim '#".expand('<cword>')."' **/*.scss"
    elseif class_pos > id_pos
      execute ":vim '.".expand('<cword>')."' **/*.scss"
    endif
  endif
endfunction


"
" Better text folding
" http://dhruvasagar.com/2013/03/28/vim-better-foldtext
function! NeatFoldText() "{{{2
  let line = ' ' . substitute(getline(v:foldstart), '^\s*"\?\s*\|\s*"\?\s*{{' . '{\d*\s*', '', 'g') . ' '
  let lines_count = v:foldend - v:foldstart + 1
  let lines_count_text = '| ' . printf("%10s", lines_count . ' lines') . ' |'
  let foldchar = matchstr(&fillchars, 'fold:\zs.')
  let foldtextstart = strpart('+' . repeat(foldchar, v:foldlevel*2) . line, 0, (winwidth(0)*2)/3)
  let foldtextend = lines_count_text . repeat(foldchar, 8)
  let foldtextlength = strlen(substitute(foldtextstart . foldtextend, '.', 'x', 'g')) + &foldcolumn
  return foldtextstart . repeat(foldchar, winwidth(0)-foldtextlength) . foldtextend
endfunction
set foldtext=NeatFoldText()
" }}}2


"
" Align selected text by a specific character
" I don't understand vundle enough quite yet; even though Bundle 'Align' is above, exists(":AlignCtrl") never passed during .vimrc
" So to hack around this for now I lazy-config Align otf.
function! MyAlignConfig()
  " auto-align: left justify (l), first sep only (:), 1 sp on either side of
  " separator (p1P1), preserve leading whitespace so we don't break indenting (W)
  " works for = and =>
  AlignCtrl =l:p1P1W =>\? :
endfunction





