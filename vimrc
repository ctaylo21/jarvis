" ============================================================================ "
" ===                               PLUGINS                                === "
" ============================================================================ "

" Set up Vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle list
Bundle 'gmarik/vundle'

" Installed plugins
Bundle 'corntrace/bufexplorer'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-fugitive'
Bundle 'tobyS/pdv'
Bundle 'SirVer/ultisnips'
Bundle 'tobyS/vmustache'
Bundle 'airblade/vim-gitgutter'
Bundle 'evidens/vim-twig'
Bundle 'Townk/vim-autoclose'
Bundle 'edkolev/tmuxline.vim'
Bundle 'jelera/vim-javascript-syntax'

" ============================================================================ "
" ===                           EDITING OPTIONS                            === "
" ============================================================================ "
" remap leader key to ,
let mapleader=","

" Line Numbers
set nu

" Tabs as 4 spaces
set expandtab
set softtabstop=4
set shiftwidth=4

" Backspace works as it damn well should!
set backspace=indent,eol,start

" yank and paste with the system clipboard
set clipboard=unnamed

" Manual line folding
set foldmethod=manual
set foldlevel=1

" Search highlighting
set hlsearch

" Syntax highlighting and colors
syntax enable

" Enable matching pairs for match-it
filetype plugin on

" Hides buffers instead of closing them
set hidden

" do not wrap long lines by default
set nowrap

set nolist

" incremental search
set incsearch

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

" ============================================================================ "
" ===                                 MISC.                                === "
" ============================================================================ "
" After writing to any .vimrc, source that file
au! BufWritePost .vimrc so %

" Possible fix for fugitive conflict with CtrlP
au BufReadPost fugitive://* set bufhidden=delete

set encoding=utf-8

" Autocomplete in menu will list all available options that match
set wildmenu

" allow for tab completion in the command line
set wildmode=list:longest

autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %

" Make any custom changes here. If this file doesn't exists, the
" base vimrc.custom is copied here to give you some font options
" If it already exists when you do a git pull it won't be overwritten
if filereadable(expand("~/.vim/vimrc.local"))
  source ~/.vim/vimrc.local
endif
