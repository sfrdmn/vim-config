set nocompatible
filetype on " OS X fix
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'bnf.vim'
Bundle 'groovy.vim'
Bundle 'git@github.com:sfrdmn/vim-config.git'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git@github.com:sophacles/vim-processing.git'
Bundle 'SuperTab'
Bundle 'Syntastic'
Bundle 'pangloss/vim-javascript'

filetype plugin indent on     " required!

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
