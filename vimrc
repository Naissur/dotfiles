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
highlight LineNr ctermfg=darkgrey


" tabs
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>


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

nnoremap n nzz
nnoremap N Nzz



" toggling status display
let s:hidden_all = 0
function! ToggleHiddenAll()
    if s:hidden_all  == 0
        let s:hidden_all = 1
        set noshowmode
        set noruler
        set laststatus=0
        set noshowcmd
    else
        let s:hidden_all = 0
        set showmode
        set ruler
        set laststatus=2
        set showcmd
    endif
endfunction

nnoremap <C-h> :call ToggleHiddenAll()<CR>


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


" NERDTree
map <C-n> :NERDTreeToggle<CR>


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
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround.git'

" Visuals
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'edkolev/tmuxline.vim'
Plugin 'othree/yajs.vim'
Plugin 'morhetz/gruvbox'

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



" colors
" 256 terminal colors
set t_Co=256

set background=dark
let g:gruvbox_invert_selection=0

silent colorscheme gruvbox
highlight Normal ctermbg=NONE

au VimEnter * :AirlineTheme gruvbox
au VimEnter * :AirlineRefresh

"git-gutter no column highlight
au VimEnter * let g:gitgutter_override_sign_column_highlight = 0
au VimEnter * highlight SignColumn ctermbg=none    " terminal Vim




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

" hide statusline on start
au VimEnter * call ToggleHiddenAll()

