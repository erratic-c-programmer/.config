runtime functions.vim

tnoremap <ESC> <C-\><C-n>
nnoremap <Leader>o :Vexplore<CR>
" F1 is help
" F2 is codepainter
nnoremap <F3> :UndotreeToggle<CR>
" F4 is free
" F5 is for latex
nnoremap <F6> :TogglePudbBreakPoint<CR>
inoremap <F6> <C-o>:TogglePudbBreakPoint<CR>

nnoremap <Leader>x :bp<CR>:bd #<CR>
nnoremap <C-j> :bn<CR>
nnoremap <C-k> :bp<CR>
nnoremap <Leader>e :CocCommand explorer<CR>

" Bookmarks
nmap <Leader>bj <Plug>(coc-bookmark-next)
nmap <Leader>bk <Plug>(coc-bookmark-prev)
nmap <Leader>bt <Plug>(coc-bookmark-toggle)
nmap <Leader>ba <Plug>(coc-bookmark-annotate)
nmap <Leader>bl :CocList bookmark<CR>

" For coc.nvim, some from the coc.nvim wiki

" Rename symbol
nmap gr <Plug>(coc-rename)

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ Check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
"
" Use K to show documentation in preview window.
nnoremap <silent> K :call Show_documentation()<CR>

" Function and Class text objects
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)
