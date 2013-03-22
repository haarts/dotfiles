set encoding=utf-8

source ~/.vim/bundles.vim

bindkey -e

let mapleader = ","

syntax enable
set background=dark

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
  set fileencodings=utf-8,latin1
endif

let g:Powerline_symbols = 'unicode'

set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files

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

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
map <leader>j :%!python -m json.tool<CR>
nmap <C-h> :bnext<CR>
nmap <C-l> :bprev<CR>

" Sane Yank
nmap Y y$

filetype plugin indent on

set autoindent
set smartindent

set cursorline
set laststatus=2

set hidden
set tags=./tags;$HOME

autocmd FileType java,ruby,eruby autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))
"autocmd FileType go autocmd BufWritePre <buffer> Fmt
au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au BufRead,BufNewFile *.go set filetype=go
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

autocmd BufWritePost *
      \ if filereadable('tags') |
      \   call system('ctags -a '.expand('%')) |
      \ endif

" rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>

function! RunCurrentSpecFile()
  if InSpecFile()
    let l:command = "rspec " . @%
    call SetLastSpecCommand(l:command)
    call RunSpecs(l:command)
  endif
endfunction

function! RunNearestSpec()
  if InSpecFile()
    let l:command = "rspec -l " . line(".") . " " . @%
    call SetLastSpecCommand(l:command)
    call RunSpecs(l:command)
  endif
endfunction

function! RunLastSpec()
  if exists("t:last_spec_command")
    call RunSpecs(t:last_spec_command)
  endif
endfunction

function! InSpecFile()
  return match(expand("%"), "_spec.rb$") != -1
endfunction

function! SetLastSpecCommand(command)
  let t:last_spec_command = a:command
endfunction

function! RunSpecs(command)
  execute ":w\|!clear && echo " . a:command . " && echo && " . a:command
endfunction
