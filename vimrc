" Vim needs a POSIX-Compliant shell. Fish is not.
" if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
" endif
filetype on
filetype off

set encoding=utf-8

set shell=/bin/bash

source ~/.vim/bundles.vim
"source ~/.vim/autotag.vim

let mapleader = ","
let g:CommandTMaxHeight=25
let g:CommandTMatchWindowReverse=1

syntax enable
set background=dark

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
  set fileencodings=utf-8,latin1
endif

"let g:Powerline_symbols = 'unicode'
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

:hi Visual term=reverse cterm=reverse guibg=LightGrey

set ruler
set nocompatible
set showmatch
set nohlsearch
set incsearch
set ignorecase
set smartcase
set backspace=indent,eol,start
set nowrap
set nobackup
set noswapfile
set pastetoggle=<F2>
set wildmenu
set wildmode=longest,list,full
set relativenumber
set undofile

" sane regex
set gdefault

set list
set listchars=tab:▸\ ,trail:·

set tabstop=2
set shiftwidth=2
set expandtab
set scrolloff=3

set tabpagemax=150
" set number

nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>
vmap <leader>W :s/\s\+$//<CR>:let @/=''<CR>
map <leader>j :%!python -m json.tool<CR>
nmap <C-h> :bnext<CR>
nmap <C-l> :bprev<CR>
nmap <leader>nrn :set norelativenumber<CR>
nmap <leader>rn :set relativenumber<CR>
" screw Ex mode, whatever that is
nnoremap Q <nop>

" Sane Yank
nmap Y y$

" command W w
" command Q q

filetype plugin indent on

set autoindent
set smartindent

set cursorline
set laststatus=2

set hidden
set tags=./tags;$HOME

autocmd FileType fish setlocal nofoldenable
autocmd FileType java,ruby,eruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
"au BufRead,BufNewFile *.go set filetype=go
"autocmd FileType go setlocal noexpandtab tabstop=4 listchars=tab:\ \ ,trail:·
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd! BufNewFile,BufRead *.pde setlocal ft=arduino
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
au FocusLost * :wa
au! BufWritePost .vimrc source ~/.vimrc

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

autocmd BufRead,BufNewFile *.go call Go_set_env()
function! Go_set_env()
  set listchars=tab:\ \ ,trail:·
  set filetype=go
  set noexpandtab
  set tabstop=4
  set shiftwidth=4
  au Filetype go nnoremap <leader>d :exe "GoDef" <CR>
endfunction

autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif
