set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on  
"Vundle material upto here

set number "show line number
set relativenumber
" highlitt current line and add line numbers
set cursorline

set undofile "set undo dir(file can be undo after closing too)
set undodir=~/.vim/undodir
set undolevels=2000
set undoreload=10000

syntax on "check syntax

set tabstop=4 " PEP-8 uses 4 spaces per indentation level
set shiftwidth=4 " shifting (PEP-8)
set expandtab " spaces instead of tabs (PEP-8, and just bettter in general)

set hls " highlight search terms (:noh to turn off temporarily)
set incsearch " search as you type

set showmatch         " Show matching parens/braces when writing code
set noautoindent      " Turn off autoindent by default
set smartindent       " Use smart indent instead

colorscheme railscasts

map ^P :set paste!<CR>:set paste?<CR> "in python mode at least, autoindent will usually mess up pasted text

set hidden

" make the status line more useful
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]

set nocompatible
call pathogen#infect() "some kind of plugin manager
"mkdir -p ~/.vim/autoload ~/.vim/bundle && \
"> curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
"(installed pathogen)
"cd ~/.vim/bundle;  git clone https://github.com/scrooloose/nerdtree.git;
"(installed NERDtree)

:au FocusLost * :wa

noremap <ScrollWheelUp>      <nop>
noremap <S-ScrollWheelUp>    <nop>
noremap <C-ScrollWheelUp>    <nop>
noremap <ScrollWheelDown>    <nop>
noremap <S-ScrollWheelDown>  <nop>
noremap <C-ScrollWheelDown>  <nop>
noremap <ScrollWheelLeft>    <nop>
noremap <S-ScrollWheelLeft>  <nop>
noremap <C-ScrollWheelLeft>  <nop>
noremap <ScrollWheelRight>   <nop>
noremap <S-ScrollWheelRight> <nop>
noremap <C-ScrollWheelRight> <nop>
"disabled mouse scroll"
