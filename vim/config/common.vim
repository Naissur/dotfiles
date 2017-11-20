" be iMproved, required
set nocompatible
set hidden

syntax on

" setting encoding to utf - 8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.

set backspace=indent,eol,start

" remove escape delays
set timeoutlen=1000 ttimeoutlen=0

" remove startup message
set shortmess+=I

" do NOT move back after leaving insert mode
inoremap <silent> <Esc> <Esc>`^

" swap line-wise and visual-line-wise motions
noremap j gj
noremap k gk

noremap gj j
noremap gk k

" make Y behave like C and D
nnoremap Y y$

" leader
let mapleader = ","
let maplocalleader = ","

" add extensions to opening files at cursor
set suffixesadd+=.js,.ts,.tsx

" wildmenu
set wildmenu
set wildignorecase

" no current line highlight
hi CursorLineNr none

" mark whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" [l & ]l
nmap ]l :lnext<CR>
nmap [l :lprev<CR>

" mark whitespace
set list
set listchars=tab:\|\ ,trail:·,extends:#,nbsp:·

" toggle paste on F10
map <F10> :set invpaste<CR>

" *.md is markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

" search
set incsearch
set hlsearch
set wrapscan

" fix jumping cursor when joining lines
nnoremap J mzJ`z

" reset search results
nnoremap <silent> <localleader>/ :let @/ = ""<CR>

" Set to auto read when a file is changed from the outside
set autoread

" :W sudo saves the file 
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null


" gp selects pasted text
nnoremap <expr> gp '`[' . strpart(getregtype(), 0, 1) . '`]'


set ignorecase
set smartcase

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


" disable folding
set nofoldenable


" scrolling
set so=6
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>


" avoid updating the screen before commands are completed
set lazyredraw


" Set grep args
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
else
  set grepprg=git\ grep\ -n\ $*
endif

" remap navigation commands to center view on cursor using zz
map <C-U> 8kzz
map <C-D> 8jzz

" nnoremap <C-E> 1jzz
" nnoremap <C-Y> 1kzz

nnoremap '' ''zz

nnoremap n nzz
nnoremap N Nzz

" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>


source ~/.vim/config/status.vim

" moving lines
nnoremap mj :m .+1<CR>==
nnoremap mk :m .-2<CR>==
vnoremap mj :m '>+1<CR>gv=gv
vnoremap mk :m '<-2<CR>gv=gv


" completion
set completeopt=longest,menuone

inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nmap <localleader>id :pu=strftime('%c')<CR>
