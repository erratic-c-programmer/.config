runtime functions.vim

autocmd BufEnter *.h setlocal filetype=c

autocmd FileType bibtex set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab
autocmd FileType go set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab
autocmd FileType haskell set expandtab smarttab tabstop=2 softtabstop=0 shiftwidth=2
autocmd FileType html inoremap <// </<C-x><C-o><Esc>==`.a
autocmd FileType html set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab
autocmd FileType lilypond set tabstop=2 shiftwidth=2 softtabstop=0 expandtab foldmethod=manual
autocmd FileType lisp set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab
autocmd FileType notes set spell shiftwidth=2 tabstop=2 | ab o •
autocmd FileType python compiler pylint | let g:own_builtin_indent=0 | set noexpandtab tabstop=4 softtabstop=4 shiftwidth=4
autocmd FileType sh set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab
autocmd FileType tex set tabstop=2 softtabstop=0 smarttab shiftwidth=2 expandtab spell makeprg=make
autocmd FileType text set spell expandtab
autocmd FileType vim set tabstop=2 shiftwidth=2 softtabstop=2
