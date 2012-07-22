syntax enable
set nocompatible
"colorscheme autumn kkruby autumn delek lucius
set t_Co=256
if has('gui_running')
  set background=light
else
  let g:solarized_termcolors=256  
  set background=dark
endif
colorscheme solarized
" important for vim
"if $t_Co>255
"  colorscheme kkruby 
"else
"endif


" turn on line numbers:
set number
" toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set ruler
filetype on
filetype plugin on
filetype indent on
compiler ruby
" python syntax 
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
"
"python doc file for archlinux(becaue of python2)
let g:pydoc_cmd="/usr/bin/pydoc2"
let mapleader = ","

" For snipMate
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

"" debug  python
map <buffer> <S-e> :w<CR>:!pep8 % <CR>
"
"" quick open vimrc file
nnoremap <leader>ev :vsplit $MYVIMRC<CR>

au BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \     exe "normal! g'\"" |
    \ endif


iabbrev @@ zengzhilg@gmail.com

"" file type event with comment

:autocmd FileType python nnoremap <buffer> <localleader>c I#

"" set tab behavior
set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
nmap <F3> :NERDTreeToggle<CR>
call pathogen#infect()
