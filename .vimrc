" Based on http://amix.dk/vim/vimrc.html

" ## GENERAL ###################################################################

" Sets how many lines of history VIM has to remember
set history=300

" Enable filetype plugin
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

" When vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vimrc

"###############################################################################


" ## VIM UI ####################################################################

" Always show current position
set ruler

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"Ignore case when searching
set ignorecase

"Highlight search things
set hlsearch

"Make search act like search in modern browsers
set incsearch

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=

" Sizes
set lines=38 columns=125

"###############################################################################


" ## COLORS & FONTS ############################################################

"Enable syntax hl
syntax enable

set gfn=Inconsolata\ 10
set shell=/bin/bash

if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set background=dark
  set t_Co=256
  set background=dark
  colorscheme xoria256

  set nu
else
  colorscheme zellner
  set background=dark
  
  set nonu
endif

set encoding=utf8
try
    lang en_US
catch
endtry

"Default file types
set ffs=unix,dos,mac

"###############################################################################


" ## INDENTATION ###############################################################

set expandtab
set shiftwidth=4
set tabstop=4
set smarttab

set lbr
set tw=500

set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines

map <leader>t2 :setlocal shiftwidth=2<cr>
map <leader>t4 :setlocal shiftwidth=4<cr>
map <leader>t8 :setlocal shiftwidth=4<cr>

"###############################################################################


" ## COMMANDLINE ###############################################################

" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./

"###############################################################################
