syntax on

" CtrlP for searching
set runtimepath^=~/.vim/bundle/ctrlp.vim

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

" default to using 'g' flag in %s/search/replace/
set gdefault

set ai tabstop=2 shiftwidth=2 smartindent expandtab
map K i<Enter><Esc>

set t_Co=256
set background=dark
"colorscheme molokai
"colorscheme grb256
"colorscheme codeschool
"colorscheme herald
"colorscheme kolor
"colorscheme gruvbox
colorscheme solarized
"colorscheme vividchalk
"colorscheme desert

au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" new :sp and :vsp open below and right, instead of above and left
set splitbelow
set splitright

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0
 endif
