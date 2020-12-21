set nocompatible
syntax on
set nowrap
set encoding=utf8
set path+=**
set wildmenu
set showcmd

""" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-syntastic/syntastic'
Plugin 'mrk21/yaml-vim'
Plugin 'sheerun/vim-polyglot'
call vundle#end()
filetype plugin indent on

""" User interface
set number
set ruler
set cursorline

""" Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

""" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_python_python_exec = '/usr/bin/python3'

""" Mappings
inoremap jj <Esc>
" Line number
cmap n+ set nu
cmap n- set nonu
" Save as root
cmap w!! w !sudo tee > /dev/null %
" NERDTree
nmap <F2> :NERDTreeToggle<CR>
" Tagbar
map <C-t> :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>
" Pane switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

set clipboard=unnamedplus
