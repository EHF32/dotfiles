set rnu
set number
set cursorline
set encoding=utf-8
set scrolloff=5

" portapepels
vmap <C-c> "+y
nnoremap <C-W>h :tabprev<CR> 
nnoremap <C-W>l :tabnext<CR> 
nnoremap <C-G> :w<CR> 
inoremap <C-G> <C-O>:w<CR>
" NERDTREE
nnoremap <silent> nt :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

nnoremap <silent> gb :e#<CR>


nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

"fold regions zf%
let b:match_words = '\s*#\s*region.*$:\s*#\s*endregion'

"tabulaciones
set tabstop=4 shiftwidth=4 expandtab

" PLUG
call plug#begin('~/.vim/plugged')

"CSHARP
Plug 'sheerun/vim-polyglot'
Plug 'OmniSharp/omnisharp-vim'
"Plug 'dense-analysis/ale'
Plug 'tomasiser/vim-code-dark'

Plug 'psliwka/vim-smoothie'


" temas y navegacion
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

" Javascript y react
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'

Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets'
Plug 'epilande/vim-es2015-snippets'
call plug#end()
let g:UltiSnipsExpandTrigger="<C-l>"



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
  \ 'coc-react-refactor', 
  \ 'coc-phpls', 
  \ 'coc-omnisharp', 
  \ ]

source ~/.config/nvim/coc.vim
set statusline=%t
