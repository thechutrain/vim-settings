#!/bin/sh

echo "curling for Vimified repo ..."
curl -L https://raw.github.com/zaiste/vimified/master/install.sh | sh
echo "=== finished downloading vimified ==="

cp after.vim vimified/
echo "let g:vimified_packages = ['fancy', 'coding', 'color']" > vimified/local.vimrc

 touch ../.vimrc
 mv vimified/vimrc ../.vimrc
mv vimified/ ../.vim