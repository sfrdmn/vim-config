set nocompatible
filetype on " OS X fix
filetype off

let has_vundle=1
let vundle_readme_exists=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme_exists)
	echo "Installing Vundle.."
	echo ""
	silent !mkdir -p ~/.vim/bundle
	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
	let has_vundle=0
endif

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

if has_vundle == 0
	echo "Installing Bundles, please ignore key map error messages"
	echo ""
	:BundleInstall
endif

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
