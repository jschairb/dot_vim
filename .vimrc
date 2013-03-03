set nocompatible                " choose no compatibility with legacy vi

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
silent! Bundle 'gmarik/vundle'

Bundle 'gagoar/StripWhiteSpaces'
Bundle 'flazz/vim-colorschemes.git'
Bundle 'tpope/vim-endwise'

" Basic Configuration
syntax enable
set encoding=utf-8
set clipboard="unnamed"         " allow copy and paste to system clipboard
set hidden                      " allow changing buffers w/o write
set number                      " show line numbers
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"" Key-bindings
imap jj <ESC>

""" Buffers
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> ]B :bfirst<CR>
nnoremap <silent> [B :blast<CR>

"" Behavior
set tags+=./gems.tags           " look for Rubygems tags file in project
