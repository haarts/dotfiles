set nocompatible
" Vim needs a POSIX-Compliant shell. Fish is not.
set shell=/bin/bash

" begin Vundle
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/vundle'

Plugin 'wincent/Command-T'
Plugin 'tpope/vim-rails'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-surround'
Plugin 'dag/vim-fish'
Plugin 'mileszs/ack.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-fugitive'
Plugin 'fatih/vim-go'
Plugin 'SirVer/ultisnips'
Plugin 'majutsushi/tagbar'
Plugin 'flazz/vim-colorschemes'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on
" end Vundle
