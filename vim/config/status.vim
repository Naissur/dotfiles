" au VimEnter * hi TabLine cterm=none ctermbg=235 ctermfg=239
" au VimEnter * hi TabLineFill cterm=none ctermbg=235 ctermfg=239
" au VimEnter * hi TabLineSel cterm=none ctermbg=237 ctermfg=250

" au VimEnter * hi StatusLine cterm=none ctermbg=237 ctermfg=250
" au VimEnter * hi StatusLineNC cterm=none ctermbg=235 ctermfg=242

" au VimEnter * hi ModeMsg cterm=bold ctermbg=none ctermfg=white


set laststatus=2

set statusline=\ 
set statusline+=\ %m                                  " Modified ?
set statusline+=\ %r                                  " Read-only ?
set statusline+=\ %f                                  " File path
set statusline+=%=                                    " Switch to the right side
set statusline+=%c-%l/%L\                             " [columns]-[current line]:[total lines]
