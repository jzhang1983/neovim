set encoding=utf-8
set number relativenumber
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
Plug 'ludovicchabant/vim-gutentags'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()


colorscheme gruvbox
let g:airline_theme='gruvbox'

" NERMCommenter
nmap <C-/> <Plug>NERDCommenterToggle
vmap <C-/> <Plug>NERDCommenterToggle<CR>gv

" NERDTree
let NERDTreeQuitOnOpen=1 
let g:NERDTreeMinimalUI=1
nnoremap <C-g> :NERDTreeToggle<CR>

" open config file
noremap <leader>init :e ~\AppData\Local\nvim\init.vim<CR>

" Tabs
let g:airline#extensions#tabline#enabled = 1

" quick fix
nnoremap <C-Up> :cp<CR>
nnoremap <C-Down> :cn<CR>

" ripgrep
let g:rg_command = 'rg --vimgrep -S'

" Snippets
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ripgrep operator
noremap <leader>g :set operatorfunc=<SID>RipGrepOperator<cr>g@
vnoremap <leader>g :<c-u>call <SID>RipGrepOperator(visualmode())<cr>

function! s:RipGrepOperator(type)
   let saved_unnamed_register = @@
   if a:type ==# 'v'
       execute "normal! `<v`>y"
   elseif a:type ==# 'char'
       execute "normal! `[v`]y"
   else
       return
   endif
   
   silent execute "Rg " . shellescape(@@)
   copen

   let @@ = saved_unnamed_register
endfunction
