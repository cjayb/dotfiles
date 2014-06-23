filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax on                           " syntax highlighing
filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

set t_Co=256 " make sure vim realises terminal is 256 colors
syntax enable
set background=dark
colorscheme jellybeans

set lbr
set showbreak=… "show the '…' character at the beginning of a line
set number
set colorcolumn:81

" prefer spaces to tabs
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
"
"set spell spelllang=en_gb
"
set autoindent

" Remove folding: slows vim down!
"set foldmethod=indent
"set foldnestmax=1

" default split openings
set splitright
set splitbelow

" Airline settings
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='jellybeans'
let g:airline_powerline_fonts=1
let g:airline#extensions#tmuxline#enabled = 0 

" supertab settings
let g:SuperTabDefaultCompletionType = "context"

"jedi settings 
let g:acp_enableAtStartup = 1
"let g:jedi#use_splits_not_buffers = "left"
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

nnoremap <F5> :GundoToggle<CR>

"
"
"
" colorscheme distinguished
" colorscheme jellybeans
" colorscheme molokai
" colorscheme vividchalk

" python-mode doesn't work, possibly due to old vim
" compiling new vim fails due to unknown error (even via homebrew)
" presumably has something to do with the Canopy virtualenv setup I have
" Load the whole plugin
" let g:pymode = 1
" Auto fix vim python paths if virtualenv enabled
" let g:pymode_virtualenv = 1
"
