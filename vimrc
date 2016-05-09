" No background highlight

" setting encoding to utf - 8
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.


" backup & swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//

set nowritebackup



" relative line numbers
set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" indenting
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set softtabstop=2


" remapping addition / subraction
map + <C-a>
map - <C-x>


" highlight all search matches
set hlsearch
highlight LineNr ctermfg=darkgrey


" switching tabs mapped to ()
nnoremap ( :tabprevious <CR>
nnoremap ) :tabnext <CR>


" going through syntastic errors mapped to []
nnoremap [ :lprev <CR>
nnoremap ] :lnext <CR>


" disable folding
set nofoldenable


" scrolling
set so=6
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>



" Synastic syntax checker
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'

let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_typescript_eslint_exec = 'tslint'

let g:jsx_ext_required = 0

highlight SyntasticError guibg=#2f0000




" Ctrl-P
let g:ctrlp_root_markers = ['package.json', '.gitignore', 'README.md']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']


" VIM - ORG
let g:org_heading_shade_leading_stars = -1
let g:org_indent = 2

let mapleader = ","
let maplocalleader = ","

set laststatus=2







" =============================== "
" ===========  VUNDLE =========== "
" =============================== "

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/syntastic'
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'
Plugin 'honza/vim-snippets'

call vundle#end()            " required

filetype plugin indent on



" colors
colorscheme Tomorrow-Night
highlight Normal ctermbg=NONE

" repeat due to a strange active line color bug
au VimEnter * colorscheme Tomorrow-Night
au VimEnter * highlight Normal ctermbg=NONE
au VimEnter * :AirlineRefresh




" 256 terminal colors
set t_Co=256

" vim-airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
 
let g:airline_symbols.space = "\ua0"

let g:airline_theme = 'wombat'
let g:airline#extensions#whitespace#enabled = 0


if strlen($TMUX) && executable('tmux')
  au VimEnter * :Tmuxline airline_visual
endif

