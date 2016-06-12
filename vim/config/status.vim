au VimEnter * hi TabLine cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineFill cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineSel cterm=none ctermbg=235 ctermfg=248

au VimEnter * hi StatusLine cterm=none ctermbg=237 ctermfg=250
au VimEnter * hi StatusLineNC cterm=none ctermbg=235 ctermfg=242

au VimEnter * set noshowmode

let g:currentmode={
  \ 'n'  : 'N',
  \ 'no' : 'N·OP',
  \ 'v'  : 'V',
  \ 'V'  : 'VL',
  \ '' : 'VB',
  \ 'Rv' : 'VR',
  \ 's'  : 'S',
  \ 'S'  : 'SL',
  \ '' : 'SB',
  \ 'i'  : 'I',
  \ 'R'  : 'R',
  \ 'c'  : 'C',
  \ 'cv' : 'VEx',
  \ 'ce' : 'Ex',
  \ 'r'  : 'Prompt',
  \ 'rm' : 'More',
  \ 'r?' : 'Conf',
  \ '!'  : 'Sh'
  \}

set laststatus=2

set statusline=\ 
set statusline=\ %{g:currentmode[mode()]}
set statusline+=\ %m                                  " Modified ?
set statusline+=\ %r                                  " Read-only ?
set statusline+=\ %f                                  " Path to the file
set statusline+=%=                                    " Switch to the right side
set statusline+=%l/%L\                                " lines count
