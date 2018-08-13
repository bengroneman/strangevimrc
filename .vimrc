
set nocompatible

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start

let mapleader = ','

set number
set tabstop=2 softtabstop=0 expandtab shiftwidth=4 smarttab

" ----------------- VISUALS----------------- "  

set t_Co=256
set background=dark

colorscheme onedark

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

nmap <C-n> :NERDTreeToggle<cr>

