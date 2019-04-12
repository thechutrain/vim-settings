"#############################################################################
" Settings
"#############################################################################
set number
set ruler
set autoread                                    " Detect file changes refresh buffer
set backspace=indent,eol,start                  " Backspace of newlines
set colorcolumn=79                              " Show vertical column
set cursorline                                  " Highlight current line
set expandtab                                   " Expand tabs to spaces
set scrolloff=3                                  " Always show 3 lines around cursor
syntax enable

set hidden
set sw=2 sts=2 ts=2                             " 2 spaces
set shiftwidth=2
set expandtab
set history=1024
set softtabstop=0

"############################################################################
 "Key Maps:
 "#############################################################################
 "#############################################################################
inoremap jk <ESC>

"Changing cursor based on Vim mode:
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
~
