set nocompatible
filetype on " OS X fix
filetype off
set backspace=indent,eol,start

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
Plugin 'marijnh/tern_for_vim'
Plugin 'bnf.vim'
Plugin 'emmet.vim'
Plugin 'groovy.vim'
Plugin 'vimclojure'
Plugin 'git@github.com:sfrdmn/vim-config.git'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'git@github.com:sophacles/vim-processing.git'
Plugin 'SuperTab'
Plugin 'Syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'toyamarinyon/vim-swift'
Plugin 'fatih/vim-go'
Plugin 'mxw/vim-jsx'

filetype plugin indent on     " required!
set omnifunc=syntaxcomplete#Complete

if has_vundle == 0
	echo "Installing Plugins, please ignore key map error messages"
	echo ""
	:PluginInstall
endif

" Configuring my plugins

let g:user_emmet_expandabbr_key = '<c-e>'

" see :h vundle for more details or wiki for FAQ

let g:syntastic_cpp_include_dirs=['/usr/local/opt/llvm/include', '/Users/sean/Projects/System/umlang/lib/yrc/include']

function! Smart_TabComplete()
  let line = getline('.')                         " current line

  let substr = strpart(line, -1, col('.')+1)      " from the start of the current
                                                  " line to one character right
                                                  " of the cursor
  let substr = matchstr(substr, "[^ \t]*$")       " word till cursor
  if (strlen(substr)==0)                          " nothing to match on empty string
    return "\<tab>"
  endif
  let has_period = match(substr, '\.') != -1      " position of period, if any
  let has_slash = match(substr, '\/') != -1       " position of slash, if any
  if (!has_period && !has_slash)
    return "\<C-X>\<C-P>"                         " existing text matching
  elseif ( has_slash )
    return "\<C-X>\<C-F>"                         " file matching
  else
    return "\<C-X>\<C-O>"                         " plugin matching
  endif
endfunction

inoremap <tab> <c-r>=Smart_TabComplete()<CR>
