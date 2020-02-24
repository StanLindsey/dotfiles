" use normal regular expressions
nnoremap / /\v
vnoremap / /\v

set viminfo="~/.vim/cache/.viminfo"
set autoindent
set smartindent
set copyindent
set number
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab
set incsearch
set ignorecase
set smartcase
set hlsearch
set noerrorbells
set relativenumber
set nowrap
set mouse=a
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]
set showcmd
set showmode
set nocompatible
set ruler
syntax on

let g:rainbow_active = 1 "set to 0 if you want to enable it later via :RainbowToggle
let mapleader = ","

nnoremap <leader><space> :noh<cr>
" use tab  for moving between brackets
nnoremap <tab> %
vnoremap <tab> %

" unmap arrows keys to force us to usse hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

nnoremap ; :

nnoremap <leader>n  :NERDTreeToggle<CR>

" autosave on focus lost
:au FocusLost * silent! wa

" open nerdtree if no path specifcfied
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Spellcheck markdown
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set complete+=kspell
