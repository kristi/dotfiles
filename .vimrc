filetype off
" enable pathgen so we can put plugins in .vim/bundle
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

set modelines=0
"
" remember vim position
if has("autocmd")
	au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

set background=dark
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.class
set novisualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set undofile

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

nnoremap j gj
nnoremap k gk

nnoremap ; :

nnoremap <leader>a :Ack
" sort css properties with ,s
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>

" Map jj to esc
inoremap jj <ESC>

" Clear current serch with ,/
nmap <silent> ,/ :nohlsearch<CR>

set nobackup
set noswapfile
filetype plugin indent on
set autoindent
"set foldmethod=indent
"let python_highlight_all=1
if has('autocmd')
  autocmd filetype python set expandtab
endif

"set tabstop=4
"set shiftwidth=4
"set expandtab
syntax on

" use mouse
set mouse=a
" F4 will save
map <F4> <esc>:w<CR>
" F5 will save and run the current script
map <F5> :w<CR>:!%:p<CR>

" Change colorschemes (uses scroll_color.vim plugin)
map <silent><f9> :NEXTCOLOR<cr>
map <silent><f10> :PREVCOLOR<cr>
