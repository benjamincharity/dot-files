" Set default flags to ignore binary files and certain directories
let g:agrep_default_flags='-I --exclude-dir=.{git,svn,tmp,bundle} --exclude-dir={tmp,node_modules,bower_modules,coverage,plugins,platforms,www,dist,log}'

