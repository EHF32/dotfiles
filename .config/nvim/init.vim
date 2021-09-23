" fzf
" vim-fugitive

set rnu
set number
set cursorline&
set termguicolors&
set encoding=utf-8
set scrolloff=5

set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=99

" portapepels
vmap <C-c> "+y

nnoremap <C-W>h :tabprev<CR> 
nnoremap <C-W>l :tabnext<CR> 
nnoremap <C-G> :w<CR> 
inoremap <C-G> <C-O>:w<CR>

inoremap <C-A> <C-O>:.!figlet<CR>
nnoremap <C-A> :.!figlet<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j> :resize -2<CR>
nnoremap <M-k> :resize +2<CR>
nnoremap <M-h> :vertical resize -2<CR>
nnoremap <M-l> :vertical resize +2<CR>

" NERDTREE
nnoremap <silent> nt :NERDTreeToggle<CR>
let g:NERDTreeQuitOnOpen = 1

nnoremap <silent> gb :e#<CR>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

"fold regions zf%
" let b:match_words = '\s*#\s*region.*$:\s*#\s*endregion'

"tabulaciones
set tabstop=2 shiftwidth=2 expandtab

" PLUG
call plug#begin('~/.vim/plugged')

"CSHARP
Plug 'sheerun/vim-polyglot'
Plug 'bpstahlman/txtfmt'
Plug 'OmniSharp/omnisharp-vim'
"Plug 'dense-analysis/ale'
Plug 'phanviet/vim-monokai-pro'

"Temas
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tomasiser/vim-code-dark'
Plug 'dunstontc/vim-vscode-theme'
Plug 'ayu-theme/ayu-vim'
Plug 'w0ng/vim-hybrid'
Plug 'morhetz/gruvbox'
Plug 'dylanaraps/wal.vim'
Plug 'deviantfero/wpgtk.vim'
"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Scroll suave
Plug 'psliwka/vim-smoothie'

" temas y navegacion
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Javascript y react
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'mattn/emmet-vim'
"
" Plug 'mxw/vim-jsx'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'pantharshit00/vim-prisma'

Plug 'SirVer/ultisnips'
Plug 'epilande/vim-react-snippets', {'for': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript', 'typescriptreact', 'typescript.tsx']}
Plug 'epilande/vim-es2015-snippets', {'for': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript', 'typescriptreact', 'typescript.tsx']}
" Otros
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'preservim/nerdcommenter'
Plug 'vimsence/vimsence'
call plug#end()
let g:UltiSnipsExpandTrigger="<C-l>"




"Tema
"colorscheme wpgtkAlt
"colorscheme material

"let g:material_theme_style = 'ocean'

let g:lightline = { 'colorscheme': 'material_vim' }
highlight! link NERDTreeFlags NERDTreeDir

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
let g:airline_powerline_fonts = 1

"colorscheme ayu
colorscheme material 
set termguicolors&
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
  \ 'coc-docthis', 
  \ 'coc-prisma', 
  \ ]

source ~/.config/nvim/coc.vim
set statusline=%t





" FZF
nnoremap -rg :Rg<Space>
nnoremap -ec :Files components<CR>
nnoremap -ep :Files pages<CR>
nnoremap -. :Files<CR>


set rtp+=/usr/local/opt/fzf
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-i': 'split',
    \ 'ctrl-s': 'vsplit'
    \ }

" automatically enter insert mode on new neovim terminals
augroup terminal
au TermOpen * startinsert
augroup END


" map jk to escape
"inoremap jk <Esc>
tnoremap <C-w> <C-\><C-n>



"Discord vimsence
let g:vimsence_editing_details = 'Editing a file'





"set ft=txtfmt
