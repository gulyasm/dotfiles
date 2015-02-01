syntax enable
set t_Co=256
set number

" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" No annoying sound on errors
set noerrorbells
set novisualbell

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4


set ai "Auto indent
set si "Smart indent

set hlsearch
set incsearch

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

colorscheme molokai-transparent

execute pathogen#infect()
set runtimepath^=~/.vim/bundle/ctrlp.vim

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

:set autowrite
au FileType python nmap <Leader>r :!clear;python %<CR>
nmap <F5> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|dist)$'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>
nnoremap <Right> :bn<CR>
nnoremap <Left> :bp<CR>
nnoremap <Up> :BufExplorer<CR>
nnoremap <F2> :NERDTreeFromBookmark

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline_left_sep='>'
let g:airline_right_sep='<'
