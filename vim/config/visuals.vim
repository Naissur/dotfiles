" colors
" 256 terminal colors
set t_Co=256


" mark whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.


" relative line numbers
set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" highlight all search matches
set hlsearch
hi LineNr ctermfg=darkgrey


" colorscheme
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

