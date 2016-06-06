" tabs mappings for switching layouts

nnoremap tn  :tabnew<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tq  :tabclose<CR>

" splits
set winheight=30
set winminheight=5

set splitbelow
set splitright

nnoremap <leader> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <leader> - :exe "resize " . (winheight(0) * 2/3)<CR>

" open a new split and switch over to it
nnoremap <leader>w <C-w>s<C-w>k

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


