#!/bin/sh

curl -L https://raw.github.com/zaiste/vimified/master/install.sh | sh

cd .vim
echo "let g:vimified_packages = ['fancy', 'coding', 'color']" > local.vimrc
cat<<EOF> ./after.vimrc
"############################################################
"KEY MAPS:
""############################################################
inoremap jk <ESC>

"Changing cursor based on Vim mode:¬
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"

" SOURCE: https://stackoverflow.com/questions/6488683/how-do-i-change-the-vim-cursor-in-insert-normal-mode

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
:autocmd InsertEnter * set cul
:autocmd InsertLeave * set nocul
EOF
