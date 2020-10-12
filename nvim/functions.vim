function! OwnFmt(formatter, formatter_args)
	let cline = line('.')
	let ccol = col('.')
	" Use the builtin indenter
	if g:own_builtin_indent == 1
		execute 'silent! undojoin | normal! gg=G<CR>'
		normal! <CR>
	endif
	" Format the file with external formatter
	if g:own_fmt_on_save == 1
		execute '1,$!' . a:formatter . ' ' . a:formatter_args
		normal! <CR>
	endif
	" Retab the file
	if g:own_retab == 1
		retab!
	endif
	" Go back to the position just now
	call cursor(cline, ccol)
	" Set the last edited mark by making an edit
	undojoin | normal! iix
	" Move line to middle of screen
	normal! zz
endfunction


" Generate a random number (Thanks to https://www.stackoverflow.com :-P)
function! GetRandom(max) abort
	return str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:]) % a:max
endfunction


" Generate a random sonokai variant string
function! RandomSonokaiVariant()
	let n = GetRandom(4)
	if n == 0
		return 'default'
	elseif n == 1
		return 'atlantis'
	elseif n == 2
		return 'andromeda'
	elseif n == 3
		return 'shusia'
	elseif n == 4
		return 'maia'
	endif
endfunction

" For coc.nvim, from the coc.nvim wiki

function! Check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]	=~# '\s'
endfunction

function! Show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
