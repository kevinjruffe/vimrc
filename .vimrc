call plug#begin('~/.vim/plugged')
Plug 'https://github.com/arcticicestudio/nord-vim'
call plug#end()

syntax enable                  " enable syntax processing
syntax on                      " enable syntax highlighting
colorscheme nord               " my current theme
set number                     " show line numbers
set showmatch                  " highlight matching brackets/parentheses/braces
set incsearch                  " search as characters are entered
set hlsearch                   " highlight matches
set paste                      " paste as copied
set nowrap                     " do not wrap long line
filetype indent off            " no autoindent
set colorcolumn=80             " highlight 80 character line
set mouse=a                    " mouse can move cursor
set backspace=eol,indent,start " can use backspace always
set relativenumber             " make line numbers relative
set clipboard=unnamedplus      " use system clipboard for yank / paste

" highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
