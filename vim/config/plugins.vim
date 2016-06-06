
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
Plugin 'scrooloose/nerdtree'
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
" let g:ctrlp_open_new_file = 'r'
let g:ctrlp_reuse_window  = 'startify'




" Lite mode
nnoremap <Leader>z :LiteDFMToggle<CR>i<Esc>
au VimEnter * :LiteDFMToggle


" NERDTree
map <C-n> :NERDTreeToggle<CR>


" VIM - ORG
let g:org_heading_shade_leading_stars = -1
let g:org_indent = 2

set laststatus=2


" ==================================== "
" ==========  Buffergator ============ "
" ==================================== "

" Enable the list of buffers in airline
" let g:airline#extensions#tabline#enabled = 1

" just show the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

set hidden

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'
let g:buffergator_hsplit_size=80
let g:buffergator_split_size=80


" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
let g:buffergator_mru_cycle_loop = 1

" nmap <localleader>bk :BuffergatorMruCyclePrev<cr>
" nmap <localleader>bj :BuffergatorMruCycleNext<cr>
nmap <C-b> :BuffergatorToggle<cr>

nmap <localleader>bn :enew<cr>
" nmap <localleader>bq :bp <BAR> bd #<cr>

" ==================================== "
" =========  / Buffergator =========== "
" ==================================== "



