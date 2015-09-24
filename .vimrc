call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set number
colorscheme lightning
set background=light
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14
set gfn=DejaVu\ Sans\ Mono\ for\ Powerline:h14
let g:airline_powerline_fonts = 1
let g:airline_theme='light'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:jsdoc_additional_descriptions = 1
let g:jsdoc_default_mapping = 0
let g:ragtag_global_maps = 1
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
set list lcs=tab:\|\ 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jsxhint']
set nobackup
set noswapfile
set mouse=a
set pastetoggle=<F2>
" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map gn :bn<cr>
map gp :bp<cr>
map gd :bd<cr>
nmap <silent> ,/ :nohlsearch<CR>
" PHP documenter script bound to Control-P
autocmd FileType php inoremap <C-p> <ESC>:call PhpDocSingle()<CR>i
autocmd FileType php nnoremap <C-p> :call PhpDocSingle()<CR>
autocmd FileType php vnoremap <C-p> :call PhpDocRange()<CR> 
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let g:ctrlp_custom_ignore = {
  \ 'hdir':  '\v[\/]\.(git|hg|svn)$',
  \ 'dir': '\v[\/](node_modules)$',
  \ }
nnoremap tg :TagbarToggle<CR>
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
