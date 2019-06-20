set nocompatible
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
call vundle#end()

filetype plugin indent on

syntax enable
set path+=**
set wildmenu

set expandtab
set shiftwidth=2
set softtabstop=2

set number
set showcmd
set cursorline

inoremap jj <Esc>
"Line number
cmap n+ set nu
cmap n- set nonu
"Save as root
cmap w!! w !sudo tee > /dev/null %
"NERDTree
nmap <F2> :NERDTreeToggle<CR>
"Tagbar
map <C-t> :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>
"Pane switching
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
