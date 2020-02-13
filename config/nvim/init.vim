set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

Plugin 'dense-analysis/ale'

let g:ale_sign_column_always = 1
let g:ale_lint_on_save = 1
nmap <localleader>f <Plug>(ale_fix)

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

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
