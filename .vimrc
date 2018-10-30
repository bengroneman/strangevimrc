
set nocompatible

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start

let mapleader = ','

set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" ----------------- VISUALS----------------- "  

set t_Co=256

set background=dark
colorscheme gruvbox

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Allows for highlighting your search query"
set hlsearch

nmap <C-n> :NERDTreeToggle<cr>

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
