" colors
" 256 terminal colors
set t_Co=256

set relativenumber
set numberwidth=10
set foldcolumn=12

" colorscheme
set background=dark

colorscheme base16-default-dark


highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
highlight FoldColumn  ctermbg=NONE   ctermfg=NONE
" highlight LineNr cterm=none ctermbg=NONE   ctermfg=237
" highlight CursorLineNr cterm=none ctermbg=NONE   ctermfg=252
" highlight Search      cterm=inverse     ctermbg=none   ctermfg=11

" splits
silent! set winheight=20
silent! set winminheight=3
silent! set winminwidth=20

" colors
" 256 terminal colors
set t_Co=256
if &term =~ '256color'
  " disable Background Color Erase (BCE)
  set t_ut=
endif

" colorscheme
let base16colorspace=256
set background=dark
colorscheme base16-default-dark

" number column
set relativenumber
set number

" collapse / expand left gutter
set numberwidth=10 foldcolumn=12

" Like windo but restore the current window.
function! WinDo(command)
  let currwin=winnr()
  execute 'windo ' . a:command
  execute currwin . 'wincmd w'
endfunction
com! -nargs=+ -complete=command Windo call WinDo(<q-args>)

" toggle toggle collapsed gutter
function! ToggleCollapsed()
  if &numberwidth == 10
    Windo set numberwidth=1 foldcolumn=1
  else
    Windo set numberwidth=10 foldcolumn=12
  endif
endf

nmap <silent> <localleader>v :call ToggleCollapsed()<CR>

" hi Normal term=none ctermbg=black ctermfg=231 guifg=#FFFFFF guibg=black
" au VimEnter * highlight Folded      ctermbg=darkgrey
" au VimEnter * highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


