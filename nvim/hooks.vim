runtime functions.vim

autocmd BufEnter *.h setlocal filetype=c
" autocmd BufWritePre *.py call OwnFmt('black', '--quiet -')
" autocmd BufWritePre *.c call OwnFmt('indent', '-ts4 -ut -kr')
" autocmd BufWritePre *.h call OwnFmt('indent', '-ts4 -ut -kr -par 2>/dev/null')
" autocmd BufWritePre *.vim call OwnFmt('cat', '')

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Update signature help on jump placeholder.
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
