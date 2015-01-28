"
" Set the correct file type
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdown set filetype=markdown

"
" Turn on spell check in markdown files
au BufNewFile,BufRead *.md setlocal spell spelllang=en_us
au BufNewFile,BufRead *.mdown setlocal spell spelllang=en_us
au BufNewFile,BufRead *.markdown setlocal spell spelllang=en_us
