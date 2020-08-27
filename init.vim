set encoding=utf-8
set number relativenumber
set fileformat=dos
syntax enable
set noswapfile
set bomb
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

call plug#begin('~/AppData/Local/nvim/plugged')
Plug 'unblevable/quick-scope'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jremmen/vim-ripgrep'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
Plug 'junegunn/fzf.vim'

call plug#end()


colorscheme gruvbox
let g:airline_theme='gruvbox'

" NERMCommenter
nmap <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1 
let g:NERDTreeMinimalUI=1
nmap <C-t> :NERDTreeToggle<CR>

" Tabs
let g:airline#extensions#tabline#enabled = 1

