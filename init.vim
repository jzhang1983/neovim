set encoding=utf-8
set number relativenumber
set fileformat=dos
syntax enable
set noswapfile
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

call plug#end()


colorscheme gruvbox
