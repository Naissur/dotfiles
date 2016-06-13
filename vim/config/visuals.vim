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
highlight Normal ctermbg=black


au VimEnter * hi FoldColumn  ctermbg=black   ctermfg=black
" au VimEnter * highlight Folded      ctermbg=darkgrey
au VimEnter * hi LineNr      ctermbg=black   ctermfg=black
" au VimEnter * highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" no current line highlight
hi CursorLineNr none


" mark whitespace
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.



" highlight all search matches
set hlsearch
hi LineNr ctermfg=darkgrey



" rainbow parenthesis
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

