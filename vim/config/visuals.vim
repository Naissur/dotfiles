" colors
" 256 terminal colors
set t_Co=256

set number
set numberwidth=10
set foldcolumn=12

" colorscheme
set background=dark
let g:gruvbox_invert_selection=0

silent colorscheme Tomorrow-Night
highlight Normal ctermbg=none

au VimEnter * :AirlineTheme base16_grayscale
au VimEnter * :AirlineRefresh


au VimEnter * hi FoldColumn  ctermbg=black   ctermfg=black
" au VimEnter * highlight Folded      ctermbg=darkgrey
au VimEnter * hi LineNr      ctermbg=black   ctermfg=black
" au VimEnter * highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" tabs bar
au VimEnter * hi TabLine cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineFill cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineSel cterm=none ctermbg=235 ctermfg=248


" no current line highlight
hi CursorLineNr none


" mark whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.



" highlight all search matches
set hlsearch
hi LineNr ctermfg=darkgrey



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

