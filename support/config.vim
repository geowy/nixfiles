" important
set nocompatible
set t_Co=256
filetype plugin indent on
let mapleader = ","

" plugin config
let g:ackprg = 'ag --vimgrep'
let g:ale_enabled = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}
let g:ale_ruby_rubocop_executable = './ruby_gems/bin/rubocop'
let g:terraform_align=1
let g:terraform_fmt_on_save=1

map <Leader>g :Files<CR>

" windows
set splitbelow
set splitright

" displaying text
set nowrap
set number

" moving around, searching and patterns
set path+=**
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>

" syntax, hightlighting and spelling
set background=light
colorscheme ancient
set hlsearch
syntax on

" using the mouse
set mouse=a
set mousefocus

" messages and info
set showcmd
set ruler
set confirm

" selecting text
set clipboard=unnamed,unnamedplus

" editing text
map Y y$
set backspace=indent,eol,start

" tabs and indenting
set tabstop=8
set shiftwidth=2
set smarttab
set softtabstop=2
set expandtab
set autoindent
set smartindent

" reading and writing files
set autoread

" the swap file
set directory-=.

" command line editing
set history=1000
set wildignorecase
set wildmenu

" multi-byte characters
set encoding=utf-8

" scripts
noremap <leader>r :w<return>:!./%<return>
