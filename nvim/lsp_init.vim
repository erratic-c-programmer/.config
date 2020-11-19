lua << EOF
require'lspconfig'.clangd.setup{}
require'lspconfig'.jedi_language_server.setup{}
require'lspconfig'.bashls.setup{}
EOF
