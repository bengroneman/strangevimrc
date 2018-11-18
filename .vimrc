
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
colorscheme nighted

highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE

" Allows for highlighting your search query"
set hlsearch

nmap <C-n> :NERDTreeToggle<cr>

" START Syntastic plugin recommended settings "
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" END Syntastic plugin recommended settings "

augroup autosourcing
    autocmd!
    autocmd BufWritePost .vimrc source %
augroup END
