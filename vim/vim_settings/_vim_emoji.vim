" Enable emoji completion
set omnifunc=emoji#complete

" Convert :emoji_name: into Emojis
" %s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g

