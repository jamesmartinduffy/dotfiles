syntax on

" Coffeescript support
call pathogen#infect()
syntax enable
filetype plugin indent on

" Fix backspace over new lines
set backspace=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Use utf-8
set encoding=utf-8

set ai tabstop=2 shiftwidth=2 smartindent expandtab
map K i<Enter><Esc>

colorscheme desert
set background=dark

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" Make a simple "search" text object.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" new :sp and :vsp open below and right, instead of above and left
set splitbelow
set splitright
