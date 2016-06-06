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


" scroll through autocomplete with j and k
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


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
map + <C-a>
map - <C-x>


" highlight all search matches
set hlsearch
hi LineNr ctermfg=darkgrey



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

" avoid updating the screen before commands are completed
set lazyredraw

" remap navigation commands to center view on cursor using zz
nnoremap <C-U> 8kzz
nnoremap <C-D> 8jzz

nnoremap <C-E> 1jzz
nnoremap <C-Y> 1kzz

nnoremap '' ''zz

nnoremap n nzz
nnoremap N Nzz


" Synastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 4

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint'

let g:syntastic_typescript_checkers = ['tslint']

let g:jsx_ext_required = 0

highlight SyntasticError guibg=#2f0000




" Ctrl-P
let g:ctrlp_root_markers = ['package.json', '.gitignore', 'README.md']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_open_new_file = 'r'




" ==================================== "
" ==========  Buffergator ============ "
" ==================================== "

" Enable the list of buffers in airline
" let g:airline#extensions#tabline#enabled = 1

" just show the filename
" let g:airline#extensions#tabline#fnamemod = ':t'


" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

nmap bk :BuffergatorMruCyclePrev<cr>
nmap bj :BuffergatorMruCycleNext<cr>
nmap <C-b> :BuffergatorToggle<cr>

nmap bn :enew<cr>
nmap bq :bp <BAR> bd #<cr>


" tabs mappings for switching layouts

nnoremap tn  :tabnew<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tq  :tabclose<CR>

" splits mappings

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" ==================================== "
" =========  / Buffergator =========== "
" ==================================== "


" Explorer
map <C-n> :Explore<CR>
let g:netrw_liststyle=3


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

" Common
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround.git'
Plugin 'jeetsukumaran/vim-buffergator'

" Visuals
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'edkolev/tmuxline.vim'
Plugin 'othree/yajs.vim'
Plugin 'morhetz/gruvbox'
Plugin 'bilalq/lite-dfm'

" Org
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Clojure
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'                         " https://gist.github.com/malyn/646e291d01101dcc8b48 - patch for firwheel repl
Plugin 'Deraen/vim-cider'

call vundle#end()            " required

filetype plugin indent on

" Lite mode
nnoremap <Leader>z :LiteDFMToggle<CR>i<Esc>
au VimEnter * :LiteDFMToggle

" colors
" 256 terminal colors
set t_Co=256

set background=dark
let g:gruvbox_invert_selection=0

silent colorscheme gruvbox
highlight Normal ctermbg=NONE

au VimEnter * :AirlineTheme gruvbox
au VimEnter * :AirlineRefresh

" git-gutter no column highlight
au VimEnter * let g:gitgutter_override_sign_column_highlight = 0
au VimEnter * highlight SignColumn ctermbg=none    " terminal Vim

" no current line highlight
hi CursorLineNr none

" lite-dfm
let g:lite_dfm_normal_bg_cterm = 234
let g:lite_dfm_normal_bg_gui = '#abcabc'


" vim-airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
 
let g:airline_symbols.space = "\ua0"

let g:airline_theme = 'wombat'
let g:airline#extensions#whitespace#enabled = 0



" rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

