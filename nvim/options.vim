runtime functions.vim

set backspace=indent,eol,start
set bg=dark
set cinoptions=:0
set clipboard=unnamedplus " Copy/paste to/from system clipboard by default
set cursorline
set foldmethod=manual
set grepprg=grep\ -nH\ $*
set hidden
set incsearch
set mouse=a
set nrformats=bin,hex
set number
set noshowmode
set relativenumber
set ruler
set scrolloff=1
set shortmess+=c
set showtabline=2
set signcolumn=yes:3
set splitbelow splitright " More natural splitting
set suffixes+=.aux,.bbl,.blg,.brf,.cb,.dvi,.idx,.ilg,.ind,.inx,.jpg,.log,.out,.png,.toc
set suffixes-=.h
set suffixes-=.obj
set termguicolors
set undofile
set updatetime=300
set viminfo='20,<1000
set wildmenu

set tabstop=4
set shiftwidth=4
set softtabstop=4

set listchars=tab:\┊\ " Do not delete the space before this comment!
set list

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

let g:CtrlSpaceDefaultMappingKey = "<C-space> "
let g:NERDSpaceDelims = 1
let g:Tex_DefaultTargetFormat = "pdf"
let g:airline_powerline_fonts = 1
let g:airline_theme = 'sonokai'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'floating'
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'soft'
let g:gruvbox_italic = 1
let g:lisp_rainbow = 1 " Rainbow brackets
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+' " Make netrw ignore 'hidden' files
let g:netrw_liststyle = 3
let g:notes_directories = ['~/Documents/Notes']
let g:semshi#error_sign = v:false
let g:tex_flavor = "latex"
let g:undotree_HighlightChangedText = 0
let g:undotree_HighlightChangedWithSign = 0
let g:undotree_ShortIndicators = 0
let g:undotree_SplitWidth = 50

" For my stuff
if line('$') <= 1000
	let g:own_fmt_on_save = 1
else
	let g:own_fmt_on_save = 0
endif
let g:own_retab = 1
let g:own_builtin_indent = 1

" let g:sonokai_style = RandomSonokaiVariant()
let g:sonokai_style = 'maia'
let g:sonokai_enable_italic = 1
colorscheme sonokai

" For treesitter
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF
