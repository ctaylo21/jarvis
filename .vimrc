" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Vundle Setup
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundle list
Bundle 'gmarik/vundle'

" === Navigation plugins === "
Bundle 'majutsushi/tagbar'
Bundle 'corntrace/bufexplorer'
Bundle 'kien/ctrlp.vim'

" Requires patched font and symbols from powerline docs
Bundle 'bling/vim-airline'
Bundle 'scrooloose/nerdtree'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tristen/vim-sparkup'
Bundle 'majustushi/tagbar'
Bundle 'ervandew/supertab'

" === Commenting/Documentation === "
" Basic commenting: <leader>cc = 1 line <leader>cs = muliple highlighted
Bundle 'scrooloose/nerdcommenter'
" <leader>df creates generic PHP Doc for function
Bundle 'vexxor/phpdoc.vim'

" === Color Scheme Design === "
" <leader>F2 highlights hex colors in file
Bundle 'yurifury/hexHighlight'
" :HLT over item gives vim description
Bundle 'gerw/vim-HiLinkTrace'

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Basic Vim Settings
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
set nocompatible

" add line numbers
set number

" show position numbers and info
set ruler

" turn on syntax highlighting
syntax enable

" highlight the current line
set cursorline

" Remap space to page down and - to page up
noremap <Space> <PageDown>
noremap - <PageUp>

" For quick save/quit
nnoremap ; :

" Map up and down to behave more normally
map j gj
map k gk

" Easy window navigation
map <C-h> <C-w> h
map <C-j> <C-w> j
map <C-k> <C-w> k
map <C-l> <C-w> l

" Clear highlighted search terms while preserving history
nmap <silent> ,/ :nohlsearch<CR>

" Hides buffers instead of closing them
set hidden

" do not wrap long lines by default
set nowrap

" remap leader key to ,
let mapleader=","

" show tabs as 4 spaces
set tabstop=4

" number of spaces to use for each step of auto indent
set shiftwidth=2


" use spaces instead of tabs
set expandtab

" number of spaces to use when pressing the tab key
set softtabstop=2

" show tabs as >...
set list listchars=tab:>.

" highlight the search
set hlsearch

" incremental search
set incsearch

" ignore case when searching
set ignorecase

" if the search string has an upper case letter in it, the search will be case sensitive
set smartcase

set wildmenu

" allow for tab completion in the command line
set wildmode=list:longest

" filetypes to ignore when auto completeing
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn

" always show the status bar
set laststatus=1

" Backup stuff
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set undodir=~/.vim/undo

set history=1000
set undolevels=1000
set backup

" remove menu bar
set guioptions-=m 

" remove toolbar
:set guioptions-=T

" set what is allowed to be deleted by backspace (vim fix)
set backspace=indent,eol,start

" Remove right-hand scroll bar
:set guioptions-=r

" add json syntax highlighting
au BufNewFile,BufRead *.json set ft=javascript

" add markdown syntax highlighting
au BufNewFile,BufRead *.md set ft=mkd

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Font 
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

"  vim color fix
set t_Co=256
set background=dark
colorscheme jellybeans
if has ('gui_running')
  colorscheme panda 
else
  let g:NERDTreeDirArrows=0
endif

set guifont=Inconsolata\ 12

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Plugin Options 
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" NERDTree setup 
autocmd vimenter * NERDTree

" Vim-airline setup
let g:airline_powerline_fonts = 1
let g:airline_theme='dark'

" PHPDoc setup 
noremap <leader>df :call PhpDoc()<CR>
" Ctrlp 
" Ignore files we don't want to index
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
let g:ctrlp_map = '<c-p>'
" custom starting default search folder
let g:ctrlp_cmd = 'CtrlP /empire/trunk'
" Opens current file heiarchy in Nerdtree
map <c-b> :CtrlPBuffer<CR>

" SuperTab setup 
let g:SuperTabDefaultCompletionTypeDiscovery = [
\ "&completefunc:<c-x><c-u>",
\ "&omnifunc:<c-x><c-o>",
\ ]
let g:SuperTabLongestHighlight = 1

" EasyMotion setup 
let g:EasyMotion_leader_key = '<Leader>'

" Tagbar setup
let g:tagbar_show_visibility = 1
let g:tagbar_expand = 1
autocmd VimEnter * nested :TagbarOpen
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ } 

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" User Commands and Shorcuts 
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Nerdtree shorcuts
map <leader>ne :NERDTree<CR>

" switch between tabs in nerdtree with ctrl + arrow
map  <c-l> :tabn<cr>
map  <c-h> :tabp<cr>
map  <c-n> :tabnew<cr>

" Opens current file heiarchy in Nerdtree
map <leader>nf :NERDTreeFind<CR>

" Tagbar shortcuts 
"Open Tagbar or jump to it if already open (useful for split windows)
nmap <F8> :TagbarOpen j<CR>

" Svn blame highlighted lines in visual mode (freaking awesome)
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" Misc 
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
"  Go support
set rtp+=$GOROOT/misc/vim

"autocmd BufRead,BufNewFile *.go set filetype=go
"autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %

fun! Gofix()
    let regel=line(".")
    %!$GOROOT/bin/gofmt
    call cursor(regel, 1)
endfunction

autocmd Filetype go command! Fmt call Gofix()

fun! BuildGo()
  :silent Fmt
  silent make
  let l = line(".")
  let c = col(".")
  call cursor(l, c)
endfun
"autocmd BufWritePost *.go :call BuildGo()

