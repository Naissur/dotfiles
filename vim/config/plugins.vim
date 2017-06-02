" =============================== "
" ===========  VUNDLE =========== "
" =============================== "

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Common
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround.git'
Plugin 'michaeljsmith/vim-indent-object'

Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/vim-easy-align'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-projectionist'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" Layout and navigation
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-maximizer'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'

" Visuals
Plugin 'inside/vim-grep-operator'
" Plugin 'mihaifm/bufstop'
Plugin 'inkarkat/argtextobj.vim'
Plugin 'chaoren/vim-wordmotion'

" Org
Plugin 'jceb/vim-orgmode'
Plugin 'tpope/vim-speeddating'

" Snippets
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'

" Syntax
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'leafgarland/typescript-vim'
Plugin 'alvan/vim-closetag'
Plugin 'ternjs/tern_for_vim'

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
let g:syntastic_javascript_eslint_exec = 'eslint_d'

let g:syntastic_typescript_checkers = ['tslint']

let g:syntastic_debug_file = "~/syntastic.log"

let g:jsx_ext_required = 0

highlight SyntasticError guibg=#2f0000

nmap <localleader>st :SyntasticToggleMode<CR>

hi SyntasticError ctermbg=red ctermfg=21
hi SyntasticErrorSign ctermbg=red ctermfg=21



" Ctrl-P
let g:ctrlp_root_markers = ['package.json', '.gitignore', 'README.md']
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard', 'find %s -type f']
" let g:ctrlp_open_new_file = 'r'
let g:ctrlp_reuse_window  = 'startify'





" NERDTree
nnoremap <C-n> :NERDTreeFind<CR>

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['package.json', '.gitignore']
" let g:ctrlp_open_new_file = 'r'
let g:ctrlp_reuse_window  = 'startify'

if executable('ag')
  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
else
  let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files . -oc --exclude-standard', 'find %s -type f']
endif

let g:ctrlp_extensions = ['tag', 'quickfix']


" EasyAlign

vmap <Enter> <Plug>(EasyAlign)
vmap ga :EasyAlign<CR>

" NERDTree
function! ToggleNERDTreeFind()
    if g:NERDTree.IsOpen()
        execute ':NERDTreeClose'
    else
        execute ':NERDTreeFind'
    endif
endfunction
nnoremap <silent> <C-n> :call ToggleNERDTreeFind()<CR>
let NERDTreeQuitOnOpen = 1


" VIM - ORG
let g:org_heading_shade_leading_stars = 1
let g:org_indent = 2

set laststatus=2

set hidden

" nmap <C-b> :BufstopFast<cr>

nmap <localleader>bn :enew<cr>

" Rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
    \ ['cyan',    'RoyalBlue3'],
    \ ['red',     'SeaGreen3'],
    \ ['blue',    'SeaGreen3'],
    \ ['gray',    'DarkOrchid3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['gray',    'RoyalBlue3'],
    \ ['magenta', 'DarkOrchid3'],
    \ ['blue',    'firebrick3'],
    \ ['green',   'RoyalBlue3'],
    \ ['cyan',    'SeaGreen3'],
    \ ['red',     'DarkOrchid3'],
    \ ['white',   'white'],
    \ ]

" Vim-grep plugin

nmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
vmap <leader>g <Plug>GrepOperatorOnCurrentDirectory
nmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt
vmap <leader><leader>g <Plug>GrepOperatorWithFilenamePrompt

if executable('ag')
  let g:grep_operator = 'Ag'
endif


" Tagbar

nmap <leader>t :TagbarToggle<CR>

" golden ratio plugin
let g:golden_ratio_exclude_nonmodifiable = 1

" jsx end tags as begin
hi link jsxCloseTag jsxTag

" vim-closetag
let g:closetag_filenames = "*.html,*.js,*.jsx"

" vim-matchtagalways
let g:mta_filetypes = {
  \ 'html' : 1,
  \ 'xhtml' : 1,
  \ 'xml' : 1,
  \ 'jinja' : 1,
  \ 'javascript' : 1,
  \}

let g:AutoPairsMultilineClose = 0
