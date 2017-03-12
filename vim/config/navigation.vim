" marks
map ' `
map '' ``

" tabs mappings for switching layouts

nnoremap tn  :tabnew<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tq  :tabclose<CR>

" splits
" set winheight=20
" set winminheight=3
" set winminwidth=20

set splitbelow
set splitright

map + <C-W>+
map - <C-W>-

set splitbelow
set splitright

" open a new split
" nnoremap <leader>w <C-w>s
" nnoremap <leader>W <C-w>v

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nmap <BS> <C-^>

" fast resizing
nnoremap <silent> + :exe "resize " . (winheight(0) * 4/3 + 1)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 3/4)<CR>

nnoremap <silent> <localleader>> :exe "vertical resize " . (winwidth(0) * 4/3 + 1)<CR>
nnoremap <silent> <localleader>< :exe "vertical resize " . (winwidth(0) * 3/4 + 1)<CR>

