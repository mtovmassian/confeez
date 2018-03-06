set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()
filetype plugin indent on

syntax enable

set expandtab
set shiftwidth=2
set softtabstop=2

set number
set showcmd
set cursorline

inoremap jj <Esc>
"Save file without root privilege."
cmap w!! w !sudo tee > /dev/null %
cmap n+ set nu
cmap n- set nonu


