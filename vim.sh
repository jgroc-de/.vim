#!/bin/bash

#Vim plugin
rm -rf ~/.vim
rm ~/.vimrc
mkdir -p ~/.vim/{autoload,colors,syntax,plugin,spell,config,bundle}
cp -R config ~/.vim/
cp vimrc ~/.vim/vimrc
cd ~/.vim
ln -s vimrc ~/.vimrc
git clone https://github.com/tpope/vim-pathogen.git pathogen
cd autoload
ln -s ../pathogen/autoload/pathogen.vim .
cd ../bundle

##common
git clone https://github.com/scrooloose/nerdtree.git nerdtree
git clone https://github.com/mhartington/nerdtree-git-plugin.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
git clone https://github.com/justinmk/vim-syntax-extra.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/majutsushi/tagbar.git

##to consider
#git clone https://github.com/ludovicchabant/vim-gutentags.git
#git clone https://github.com/sheerun/vim-polyglot.git

##theme
git clone https://github.com/vim-airline/vim-airline.git

##html/css
git clone https://github.com/othree/html5.vim
git clone https://github.com/alvan/vim-closetag.git
git clone https://github.com/hail2u/vim-css3-syntax.git

##php
git clone https://github.com/shawncplus/phpcomplete.vim.git
git clone https://github.com/vim-php/tagbar-phpctags.vim.git
git clone https://github.com/evidens/vim-twig.git

##JS according to https://freshman.tech/vim-javascript/
#https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript
#https://github.com/w0rp/ale.git
