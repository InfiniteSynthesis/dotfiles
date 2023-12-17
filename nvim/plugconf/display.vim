""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Display
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Light background
set background=dark

" Add numbers
set number

" Highlight cursor line horizontally + vertically.
set cursorline cursorcolumn

" Diable mode information.
set noshowmode

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching bracket/etc.
set showmatch

" Show filename in title bar
set title

" Show ruler at column 80.
set colorcolumn=80,120

set wrap
set shiftwidth=4
set tabstop=4

set lcs=tab:▶\ 
set list

" Enable true color.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

" Set colortheme
colorscheme tokyonight-night
