
set nocompatible

filetype off

filetype plugin indent off

set visualbell

" Syntax
" -------------------
syntax on

" Line numbers
" -------------------
set number
set relativenumber

" Global Tabbing
" -------------------
set tabstop=2
set expandtab
"set softtabstop=2
set shiftwidth=2

" Indentations
" -------------------
set autoindent


" Leader
" -------------------
let mapleader="-"


" Spelling
" -------------------
set spell

" Terminal
" -------------------
set splitbelow
set termwinsize=15x0

" Mapping
" -------------------
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>src :source $MYVIMRC<CR>
nnoremap <C-n> :nohl<CR>
nnoremap <F5> :wa<CR> \| :term ++kill=term<CR>


" Searching
" -------------------
set hlsearch
set ignorecase
set incsearch
set smartcase


" Netrw
" -------------------
let g:netrw_banner = 0
let g:netrw_browse_split = 4  " 1 - open file in new horizontal split
                              " 2 - open file in new vertical split
                              " 3 - open file in new tab
                              " 4 - open file in previous window
let g:netrw_winsize = 25
let g:netrw_altv = 1
let g:netrw_bufsettings = 'noma nomod nu nowrap ro nobl'
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

