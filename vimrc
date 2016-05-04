colors peachpuff

set relativenumber

set backupdir=~/.vim/backup//
set directory=~/.vim/swp//


" for priority issues

set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set softtabstop=2



set so=6

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set hlsearch
highlight LineNr ctermfg=darkgrey

nnoremap ( :tabprevious <CR>
nnoremap ) :tabnext <CR>

nnoremap [ :lprev <CR>
nnoremap ] :lnext <CR>

set nowritebackup

let g:jsx_ext_required = 0

se nofoldenable

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

map + <C-a>
map - <C-x>




set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'stephenway/postcss.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on
" filetype plugin on


execute pathogen#infect()

" parenthesis for clojure
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_enable_typescript_checker = 0
let g:syntastic_typescript_checkers = ['']


highlight SyntasticError guibg=#2f0000


let g:ctrlp_root_markers = ['package.json', '.gitignore', 'README.md']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" VIM - ORG
let g:org_heading_shade_leading_stars = -1
let g:org_indent = 2
" VIM - ORG

let mapleader = ","
let maplocalleader = ","

set laststatus=2

" 256 terminal colors
set t_Co=256

" Fonts shit
let g:airline_powerline_fonts = 1

" if !exists('g:airline_symbols')
"   let g:airline_symbols = {}
" endif
" 
" let g:airline_symbols.space = "\ua0"

let g:airline_theme = 'wombat'
let g:airline#extensions#whitespace#enabled = 0

au VimEnter * :Tmuxline airline_visual
