set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'mrk21/yaml-vim'
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
"Save file without root privilege."
cmap n+ set nu
cmap n- set nonu
cmap w!! w !sudo tee > /dev/null %

