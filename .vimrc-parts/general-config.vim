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
set hlsearch
set noerrorbells
set relativenumber
set nowrap
set mouse=a
set cursorline          " highlight current line
set showmatch           " highlight matching [{()}]
syntax on
" colorscheme brogrammer

" autosave on focus lost
:au FocusLost * silent! wa

" Spellcheck markdown
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set complete+=kspell
