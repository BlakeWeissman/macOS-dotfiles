call plug#begin()
"TODO: Review plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'yuezk/vim-js'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

set number relativenumber " Add relative line numbers

set shiftwidth=2 " Indents will have a width of 4

set softtabstop=2 " Sets the number of columns for a TAB

"TODO: Revisit the stuff below
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

set clipboard=unnamedplus

vnoremap y ygv 
vnoremap p "_dP
vnoremap d "_d
nnoremap x "_x
nnoremap <del> "_x
vnoremap < <gv
vnoremap > >gv

set title

syntax on
