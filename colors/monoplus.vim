" let g:colors_name = 'monoplus'
" set background=dark
" highlight clear
"
" if exists("syntax_on")
"     syntax reset
" endif


lua package.loaded["monoplus"] = nil
lua require("monoplus").colorscheme()
