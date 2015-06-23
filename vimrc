set nocompatible
filetype off
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

call plug#end()

syntax on                           " syntax highlighing

filetype on                          " try to detect filetypes
filetype plugin indent on    " enable loading indent file for filetype

set t_Co=256 " make sure vim realises terminal is 256 colors
syntax enable
set background=dark
colorscheme jellybeans

" force md=markdown, not modula2!
autocmd BufNewFile,BufRead *.md set filetype=markdown
" force ipy=python (ipython)
autocmd BufNewFile,BufRead *.ipy set filetype=python

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

" moving around splits
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Remove folding: slows vim down!
"set foldmethod=indent
"set foldnestmax=1

" default split openings
set splitright
set splitbelow

" Airline settings
"set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_theme='jellybeans'
"let g:airline_powerline_fonts=1
"let g:airline#extensions#tmuxline#enabled = 0 

" supertab settings
" let g:SuperTabDefaultCompletionType = "context"

"jedi settings 
"let g:jedi#auto_initialization = 1
"let g:jedi#popup_on_dot = 0
"let g:jedi#show_call_signatures = 0
"
"let g:jedi#use_splits_not_buffers = "left"
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" " for removing ropi in pymode (conflicts with jedi)
" let g:pymode = 0
" let g:pymode_rope = 0
" "let g:pymode_warnings = 1
" " Not quite ready to lint yet...
" let g:pymode_lint = 0
" let g:pymode_lint_unmodified = 0
" " not ready for folding either, but here it is
" let g:pymode_folding = 0

" nnoremap <F5> :GundoToggle<CR>

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
