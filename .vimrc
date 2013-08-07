" -- BASIC -- "
set nocompatible
filetype off

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

" using w!! lets you save file that requires sudo access after already opened
cnoreabbrev <expr> w!!
                \((getcmdtype() == ':' && getcmdline() == 'w!!')
                \?('!sudo tee % >/dev/null'):('w!!'))

" Javascipt syntax highlighting
filetype plugin on
au BufRead,BufNewFile *.js set filetype=javascript
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

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

" -- FONT -- "
"  vim color fix
set t_Co=256

set background=dark
" colorscheme
colorscheme jellybeans

if has ('gui_running')
else
  let g:NERDTreeDirArrows=0
endif

" Set the font
set guifont=Inconsolata\ 12

" -- PLUGIN OPTIONS -- "
" Vundle setup {
  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " Bundle list
  Bundle 'gmarik/vundle'
  Bundle 'majutsushi/tagbar'
  Bundle 'altercation/vim-colors-solarized'
  Bundle 'corntrace/bufexplorer'
  Bundle 'Lokaltog/vim-powerline'
  Bundle 'scrooloose/nerdtree'
  Bundle 'Lokaltog/vim-easymotion'
  Bundle 'tristen/vim-sparkup'
  Bundle 'majustushi/tagbar'
  Bundle 'ervandew/supertab'
  Bundle 'scrooloose/nerdcommenter'

" } end vundle

" NERDTree setup {
  autocmd vimenter * NERDTree
" } end NERDTree setup

" SuperTab setup {
  let g:SuperTabDefaultCompletionTypeDiscovery = [
  \ "&completefunc:<c-x><c-u>",
  \ "&omnifunc:<c-x><c-o>",
  \ ]
  let g:SuperTabLongestHighlight = 1
  " } end SuperTab setup

" EasyMotion setup {
  " Set EasyMotion leader key to default
  let g:EasyMotion_leader_key = '<Leader>'


  " Defaults for eclim file openings
  let g:EclimCSearchSingleResult = "edit"
  let g:EclimLocateFileDefaultAction = "edit"
  let g:EclimCHierarchyDefaultAction = "edit"
" } end EasyMotion setup

" Eclim setup {
  " Disable preview window for eclim autocomplete
  set cot-=preview

  " Just hit enter on an element to find it
  nnoremap <silent> <buffer> <cr> :PhpSearchContext<cr>

  " Hot Key eclim's LocateFile to ctrl+p
  map  <c-p> :LocateFile <CR>
" } end Eclim setup

" Tagbar setup {
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
" } end Tagbar setup

" -- USER COMMANDS AND SHORTCUTS -- "
" Nerdtree shorcuts {
  map <leader>ne :NERDTree<CR>

  " switch between tabs in nerdtree with ctrl + arrow
  map  <c-l> :tabn<cr>
  map  <c-h> :tabp<cr>
  map  <c-n> :tabnew<cr>

  " Opens current file heiarchy in Nerdtree
  map <leader>nf :NERDTreeFind<CR>
" } end NERDTree

" Tagbar shortcuts {
  "Open Tagbar or jump to it if already open (useful for split windows)
  nmap <F8> :TagbarOpen j<CR>
" } end Tagbar shortcuts

" Svn blame highlighted lines in visual mode (freaking awesome)
vmap gl :<C-U>!svn blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" -- MISC -- "
"  Go support
set rtp+=/usr/local/go/misc/vim
autocmd BufRead,BufNewFile *.go set filetype=go
autocmd BufRead,BufNewFile *.go set makeprg=go\ build\ %

fun! BuildGo()
  :silent Fmt
  :silent !source ~/.goinit
  silent make
  let l = line(".")
  let c = col(".")
  call cursor(l, c)
endfun
autocmd BufWritePost *.go :call BuildGo()
