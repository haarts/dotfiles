set nocompatible

" begin Vundle
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-powerline'
Bundle 'jnwhiteh/vim-golang'
Bundle 'altercation/vim-colors-solarized'
Bundle 'scrooloose/nerdcommenter'

filetype plugin indent on
" end Vundle
