au VimEnter * hi TabLine cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineFill cterm=none ctermbg=235 ctermfg=239
au VimEnter * hi TabLineSel cterm=none ctermbg=237 ctermfg=250

au VimEnter * hi StatusLine cterm=none ctermbg=237 ctermfg=250
au VimEnter * hi StatusLineNC cterm=none ctermbg=235 ctermfg=242

au VimEnter * set noshowmode

set laststatus=2

set statusline=\ 
set statusline+=\ %m                                  " Modified ?
set statusline+=\ %r                                  " Read-only ?
set statusline+=\ %f                                  " Path to the file
set statusline+=%=                                    " Switch to the right side
set statusline+=%l/%L:%c\                             " [lines]/[total lines]:[columns]
