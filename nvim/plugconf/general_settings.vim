""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Disable compatibility with vi.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=300

" No annoying sound on errors
set noerrorbells

" modern search
set ignorecase smartcase

" Respect modeline in files
set modeline

" Enable filetype plugins
filetype plugin indent on

" Enable auto completion menu after pressing TAB.
set wildmode=list:longest
set wildignore+=*/.git/*,*/.DS_Store

" Turn backup off
set nobackup nowritebackup noswapfile
