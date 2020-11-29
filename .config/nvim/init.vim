set rnu
set number
set cursorline
set encoding=utf-8
set scrolloff=5

" portapepels
vmap <C-c> "+y
nnoremap <C-H> :tabprev<CR> 
nnoremap <C-L> :tabnext<CR> 
nnoremap <C-G> :w<CR> 
inoremap <C-G> <C-O>:w<CR>
" NERDTREE
nnoremap <silent> nt :NERDTreeToggle<CR>

nnoremap <silent> gb :e#<CR>

"tabulaciones
:set tabstop=4 shiftwidth=4 expandtab

" PLUG
call plug#begin('~/.vim/plugged')

"CSHARP
"Plug 'OmniSharp/omnisharp-vim'
"Plug 'dense-analysis/ale'

" temas y navegacion
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

" Javascript y react
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
call plug#end()



"Tema
let g:material_theme_style = 'ocean'
colorscheme material
let g:lightline = { 'colorscheme': 'material_vim' }
highlight! link NERDTreeFlags NERDTreeDir


"coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

source ~/.config/nvim/coc.vim
