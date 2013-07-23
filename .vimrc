set nocompatible
filetype on " OS X fix
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'vim-scripts/project.tar.gz'
Bundle 'Conque-Shell'
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
