set nocompatible

" begin Vundle
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'wincent/Command-T'
Bundle 'tpope/vim-rails'
Bundle 'vim-scripts/bufkill.vim'
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/powerline'
"Bundle 'jnwhiteh/vim-golang'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'dag/vim-fish'
Bundle 'mileszs/ack.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'godlygeek/tabular'
Bundle 'tpope/vim-fugitive'
Bundle 'fatih/vim-go'
Bundle 'SirVer/ultisnips'

filetype plugin indent on
" end Vundle
