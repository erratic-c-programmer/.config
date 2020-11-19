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

" nvim lsp stuff
nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K     <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
