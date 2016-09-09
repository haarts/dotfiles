set nocompatible
" Vim needs a POSIX-Compliant shell. Fish is not.
set shell=/bin/bash

" begin Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'wincent/Command-T'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'} 
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'dag/vim-fish'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'fatih/vim-go'
Bundle 'SirVer/ultisnips'
Bundle 'majutsushi/tagbar'

filetype plugin indent on
" end Vundle
