call pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set background=dark
colorscheme solarized
set number
set guifont=DejaVu\ Sans\ Mono:h14
" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
