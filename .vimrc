set nocompatible
filetype off

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
cmap n+ set nu
cmap n- set nonu
cmap w!! w !sudo tee > /dev/null %

