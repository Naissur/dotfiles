" setting encoding to utf - 8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

" leader
let mapleader = ","
let maplocalleader = ","

" do NOT move back after leaving insert mode
inoremap <silent> <Esc> <Esc>`^

" add extensions to opening files at cursor
set suffixesadd+=.js,.ts,.tsx

" search
set incsearch
set hlsearch

" reset search results
nnoremap <localleader>/ :let @/ = ""<CR>

" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


" disable backup & swap files
set nobackup
set noswapfile


" large history
set history=1000


" indenting
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set softtabstop=2


" remapping addition / subraction
" map + <C-a>
" map - <C-x>


" going through quickfix errors mapped to []
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
map <C-U> 8kzz
map <C-D> 8jzz

" nnoremap <C-E> 1jzz
" nnoremap <C-Y> 1kzz

nnoremap '' ''zz

nnoremap n nzz
nnoremap N Nzz


source ~/.vim/config/status.vim

