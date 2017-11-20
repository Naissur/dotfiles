set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc


"  Plugin 'roxma/nvim-completion-manager'
"  Plugin 'autozimu/LanguageClient-neovim'
"  
"  let g:LanguageClient_serverCommands = {
"      \ 'javascript': [$NVM_BIN . '/../lib/node_modules/javascript-typescript-langserver/lib/language-server-stdio.js'],
"      \ }
"  
"  " Automatically start language servers.
"  let g:LanguageClient_autoStart = 1
"  let g:LanguageClient_diagnosticsEnable = 0
"  
"  nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"  nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"  nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>
