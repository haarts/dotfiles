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
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'dag/vim-fish'
Bundle 'Yggdroot/indentLine'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'

filetype plugin indent on
" end Vundle
