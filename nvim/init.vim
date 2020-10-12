if has('python3')
endif

let mapleader = ';'

runtime plugins.vim

" Highlight trailing whitespace
match ErrorMsg '\s\+$'

runtime options.vim
runtime filetypes.vim
runtime splithandle.vim
runtime mappings.vim
runtime coc_settings.vim
runtime hooks.vim
runtime commands.vim
runtime coc_setup.vim
