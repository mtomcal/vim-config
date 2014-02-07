call pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set number
colorscheme base16-default
set background=dark
set guifont=DejaVu\ Sans\ Mono:h14
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
set nobackup
set noswapfile
set mouse=a
set pastetoggle=<F2>
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nmap <silent> ,/ :nohlsearch<CR>
" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
nnoremap tg :TagbarToggle<CR>
if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif
let g:user_zen_settings = {
      \  'php' : {
      \    'extends' : 'html',
      \    'filters' : 'c',
      \  },
      \  'xml' : {
      \    'extends' : 'html',
      \  },
      \  'haml' : {
      \    'extends' : 'html',
      \  },
      \}
" Automatically create .backup directory, writable by the group.
if filewritable(".") && ! filewritable(".backup")
  silent execute '!umask 002; mkdir .backup'
endif
