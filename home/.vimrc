set nocompatible               " be iMproved
filetype off                   " required!

" ---------------------------

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

" plugins
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'nanotech/jellybeans.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'pangloss/vim-javascript'
Bundle 'elzr/vim-json'
Bundle 'flazz/vim-colorschemes'
let g:vim_json_syntax_conceal = 0

Bundle 'groenewege/vim-less'
Bundle 'nono/vim-handlebars'
Bundle 'sjl/gundo.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'darthdeus/vim-emblem'
nnoremap <F5> :GundoToggle<CR>


" ---------------------------
" config
"
let NERDTreeIgnore=['\.meta$']

syntax on
filetype plugin indent on
let mapleader = ","
set wrap
set number
set history=1000
set backspace=indent,eol,start

" Basic tab behavior
set autoindent
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

" tab completion
set wildmode=list:longest,list:full
set complete=.,w,t

" themes / colors
"set term=xterm-256color
set term=screen-256color
"set background=dark
"colorscheme fine_blue
"colorscheme jellybeans
if has('gui_running')
  set background=light
  colorscheme solarized
else
  set background=dark
  colorscheme jellybeans
endif
" colorscheme macvim

set guifont=Menlo:h16

nnoremap <leader>sc :set spell!<CR>
nnoremap <leader>hs :set hls!<CR>

" statusline:
set laststatus=2

" make splits more natural
set splitbelow
set splitright

" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
set statusline=%{fugitive#statusline()}
set statusline+=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

" ---------------------------
" Backup

" Store temporary files in a central spot
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

set backupskip=/tmp/*,/private/tmp/*


" ----------------------------
" File mutations

match ErrorMsg '\s\+$'

" ----------------------------
" File types

au BufRead,BufNewFile Vagrantfile,Berksfile,Gemfile,Hanfile setfiletype ruby

" ----------------------------
" For Eduardo
inoremap jk <Esc>
inoremap jK <Esc>
