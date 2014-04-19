set nocompatible
filetype on " OS X fix
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'groovy.vim'
Bundle 'git@github.com:sfrdmn/vim-config.git'
Bundle 'vim-scripts/project.tar.gz'
Bundle 'tpope/vim-commentary'
Bundle 'rosenfeld/conque-term'
Bundle 'L9'
Bundle 'Lokaltog/powerline'
Bundle 'FuzzyFinder'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'altercation/vim-colors-solarized'
Bundle 'SuperTab'
Bundle 'Syntastic'
Bundle 'pangloss/vim-javascript'

filetype plugin indent on     " required!

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
