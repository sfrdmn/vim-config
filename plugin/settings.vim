syntax on

set ts=2
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set ruler

highlight ExtraWhitespace ctermbg=166 guibg=166
match ExtraWhitespace /\s\+$/

command Ni set noautoindent nosmartindent
command Yi set autoindent smartindent

au BufRead,BufNewFile *.mustache set filetype=html
au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile [Mm]akefile set noexpandtab
au BufRead,BufNewFile (*.coffee|*.cson) set noexpandtab
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.php set ts=4
au BufRead,BufNewFile *.php set shiftwidth=4
au BufRead,BufNewFile *.gradle set filetype=groovy

function! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

map 0 ^
map <C-k> :call DeleteTrailingWS()<CR>
