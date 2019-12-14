" vim-plug
call plug#begin('~/.vim/plugged')
" vim theme
Plug 'https://github.com/ayu-theme/ayu-vim'
" syntax highlighting for JSX
Plug 'mxw/vim-jsx'
call plug#end()

syntax enable       " enable syntax processing
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set number          " show line numbers
set showmatch       " highlight matching brackets, parentheses, braces
set incsearch       " search as characters are entered
set hlsearch        " highlight matches
syntax on           " syntax highlighting
set paste           " paste as copied
set nowrap          " do not wrap long lines
set colorcolumn=80  " highlight 80 character line
set mouse=a         " mouse can move cursor
set termguicolors   " enable true colors support
let ayucolor="dark" " dark version of the theme
colorscheme ayu     " theme to use
filetype indent off " counteract the autoindent in the theme

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Call WP to use vim for writing
function! WordProcessor()
  setlocal formatoptions=1
  setlocal noexpandtab
  setlocal wrap
  setlocal linebreak
  setlocal colorcolumn=
  setlocal spell spelllang=en_us
endfunction
com! WP call WordProcessor()

