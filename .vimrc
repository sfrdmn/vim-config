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

Plugin 'gmarik/vundle'

Plugin 'bnf.vim'
Plugin 'emmet.vim'
Plugin 'groovy.vim'
Plugin 'git@github.com:sfrdmn/vim-config.git'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'git@github.com:sophacles/vim-processing.git'
Plugin 'SuperTab'
Plugin 'Syntastic'
Plugin 'pangloss/vim-javascript'

filetype plugin indent on     " required!

if has_vundle == 0
	echo "Installing Plugins, please ignore key map error messages"
	echo ""
	:PluginInstall
endif

" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
