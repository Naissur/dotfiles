
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
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround.git'

" Layout and navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-maximizer'
Plugin 'scrooloose/nerdtree'
Plugin 'mihaifm/bufstop'

" Visuals
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'

" Org
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Syntax
Plugin 'othree/yajs.vim'
Plugin 'leafgarland/typescript-vim'

" Clojure
Plugin 'guns/vim-sexp'
Plugin 'tpope/vim-sexp-mappings-for-regular-people'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-fireplace'                         " https://gist.github.com/malyn/646e291d01101dcc8b48 - patch for firwheel repl
Plugin 'Deraen/vim-cider'

call vundle#end()            " required

filetype plugin indent on

" Maximizer
let g:maximizer_set_default_mapping = 0
nnoremap <C-W><C-Z> :MaximizerToggle<CR>


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





" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>


" VIM - ORG
let g:org_heading_shade_leading_stars = -1
let g:org_indent = 2

set laststatus=2



set hidden

nmap <C-b> :BufstopFast<cr>

nmap <localleader>bn :enew<cr>
