set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

Plugin 'w0rp/ale'

" Plugin 'Shougo/deoplete.nvim'
" Plugin 'carlitux/deoplete-ternjs'
" Plugin 'ternjs/tern_for_vim', { 'do': 'npm install && npm install -g tern' }
" 
" let g:deoplete#enable_at_startup = 1


" Plugin 'roxma/nvim-completion-manager'
" Plugin 'autozimu/LanguageClient-neovim'
" Plugin 'roxma/nvim-cm-tern'

" let g:LanguageClient_serverCommands = {
"     \ 'javascript': [$NVM_BIN . '/../lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
"     \ }
" 
" " Automatically start language servers.
" let g:LanguageClient_autoStart = 1
" let g:LanguageClient_diagnosticsEnable = 0
" 
" nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
" nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
" nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
