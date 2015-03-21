#!/bin/bash

HOME_DIR=$1

echo "##################"
echo "# configure vim: $HOME_DIR"

mkdir -p $HOME_DIR/.vim/autoload $HOME_DIR/.vim/bundle && \
curl -LSso $HOME_DIR/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/fatih/vim-go.git $HOME_DIR/.vim/bundle/vim-go

cat > $HOME_DIR/.vimrc <<DELIM
" https://github.com/tpope/vim-pathogen
execute pathogen#infect()
syntax on

let g:go_fmt_command = "goimports"

" Indentation (Note: filetype > smartindent & cindent)
set tabstop=4
set shiftwidth=4
set autoindent
filetype plugin indent on

" http://stackoverflow.com/questions/526858/how-do-i-make-vim-do-normal-bash-like-tab-completion-for-file-names
set wildmode=longest,list,full
set wildmenu

" New splits should open below/right of current buffer.
set splitbelow
set splitright
DELIM
