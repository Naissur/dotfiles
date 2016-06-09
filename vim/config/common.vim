" setting encoding to utf - 8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.


" search
set incsearch
set hlsearch

" leader
let mapleader = ","
let maplocalleader = ","


" disable backup & swap files
set nobackup
set noswapfile


" indenting
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set softtabstop=2


" moving words
nnoremap <w daWBP
nnoremap >w daWWP


" remapping addition / subraction
" map + <C-a>
" map - <C-x>


" going through syntastic errors mapped to []
nnoremap [ :lprev<CR>
nnoremap ] :lnext<CR>


" disable folding
set nofoldenable


" scrolling
set so=6
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


" scroll through autocomplete with j and k
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


" avoid updating the screen before commands are completed
set lazyredraw


" remap navigation commands to center view on cursor using zz
nnoremap <C-U> 8kzz
nnoremap <C-D> 8jzz

" nnoremap <C-E> 1jzz
" nnoremap <C-Y> 1kzz

nnoremap '' ''zz

nnoremap n nzz
nnoremap N Nzz

