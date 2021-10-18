" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'vimwiki/vimwiki'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" CTRL-P remaps
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
\ 'dir':  '\v[\/]\.(git|hg|svn|node_modules|env)$',
\ 'file': '\v\.(exe|so|dll)$',
\ 'link': 'some_bad_symbolic_links',
\ }

" Config ported from /bengroneman/utils/blob/master/Vim/.vimrc
" TODO: organize this file logically
set backspace=indent,eol,start
set paste
set hlsearch

syntax on
let mapleader = ','

" Nedtree remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


" Text layout
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Vim Wiki setup w/Hugo
let g:vimwiki_list = [{
  \ 'auto_export': 1,
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '$HOME/Documents/vimwiki/_site',
  \ 'path': '$HOME/Documents/vimwiki/content',
  \ 'template_path': '$HOME/Documents/vimwiki/templates/',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '$HOME/.dotfiles/wiki2html.sh',
  \ 'template_ext':'.html'
\}]

