""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype on
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Proper backspace behavior.
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Add numbers to each line on the left-hand side.
set number

" Enable auto completion menu after pressing TAB.
set wildmenu
set wildmode=list:longest
set wildignore+=*/.git/*,*/.DS_Store

" Highlight cursor line horizontally + vertically.
set cursorline cursorcolumn

" Diable mode information.
set noshowmode

" Show ruler at column 80.
set colorcolumn=80

" modern search
set ignorecase smartcase showmatch hlsearch incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Always show status line
set laststatus=2

" Add a bit extra margin to the left
" set foldcolumn=1

" Respect modeline in files
set modeline
set modelines=4

set showcmd


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set lcs=tab:󰌒\ 
set list

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

	Plug 'mhinz/vim-startify'                         " Start screen
	Plug 'preservim/nerdtree' |
		\ Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tpope/vim-commentary'                       " Code Comment
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
	Plug 'itchyny/lightline.vim'                      " Statusbar
	Plug 'psliwka/vim-smoothie'                       " Smooth scroll
	Plug 'ryanoasis/vim-devicons'                     " Nerd font icons
	" Theme
	Plug 'morhetz/gruvbox'
	" Formatter
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
	" Language
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'SirVer/ultisnips'
	Plug 'lervag/vimtex'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-devicons
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable = 1
let g:WebDevIconsOS = 'Darwin'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '«'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
	\ 'colorscheme': 'one',
	\ 'tabline_separator': { 'left': "", 'right': "" },
	\ 'tabline_subseparator': { 'left': "", 'right': "" },
	\ 'separator': { 'left': "", 'right': "" },
	\ 'subseparator': { 'left': "", 'right': "" },
	\ 'tabline': {
	\     'left': [ [ 'vimlogo' ], [ 'tabs' ] ],
	\     'right': [ [ 'close' ]] 
	\ },
	\ 'active': {
	\     'left': [ [ 'mode', 'paste' ], 
	\               [ 'fugitive', 'readonly', 'relativepath', 'modified'] ],
	\     'right': [ [ 'lineinfo', 'totallineinfo' ], 
	\                [ 'percent' ],
	\                [ 'fileformat', 'fileencoding', 'filetype' ] ]
	\ },
	\ 'component': {
	\     'vimlogo': '',
	\     'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}',
	\     'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
	\     'lineinfo': "%{printf('%2d:%-3d',col('.'),line('.'))}",
	\     'totallineinfo': "%{printf('%d',line('$'))}"
	\ },
	\ 'component_function': {
	\     'mode': 'LightlineMode',
	\     'fileformat': 'LightlineFileFormat',
	\     'fileencoding': 'LightlineFileEncoding',
	\     'filetype': 'LightlineFileType'
	\ }, 
	\ 'component_visible_condition': {
	\     'readonly': '(&filetype!="help"&& &readonly)',
	\     'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
	\     'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
	\ }
	\ }


function! LightlineMode()
	return winwidth(0) > 70 ? lightline#mode() : ''
endfunction

function! LightlineFileFormat()
	return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

function! LightlineFileEncoding()
	return winwidth(0) > 70 ? &fileencoding : ''
endfunction

function! LightlineFileType()
	return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn syntax highlighting on.
syntax on

" Enable true color.
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

let g:gruvbox_italic = 1

colorscheme gruvbox


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc-nvim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
	\ 'coc-json',
	\ 'coc-vimtex',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-tsserver'
	\ ]

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1) :
	\ CheckBackspace() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
	\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ultisnips
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<C-J>"
let g:UltiSnipsJumpForwardTrigger="<C-J>"
let g:UltiSnipsJumpBackwardTrigger="<C-K>"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimtex
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Most VimTeX mappings rely on localleader and this can be changed with the     
" following line. The default is usually fine and is the symbol "\".            
let maplocalleader = "," 

" This will only work if `vim --version` includes `+clientserver`!
if empty(v:servername) && exists('*remote_startserver')
	call remote_startserver('VIM')
endif

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
let g:vimtex_view_method = 'zathura'

" TOC settings
let g:vimtex_toc_config = {
	\ 'name' : 'Table of Contents',
	\ 'layers' : ['content', 'todo', 'label'],
	\ 'mode' : 2,
	\ 'split_width': 35
	\ }

" Don't open QuickFix for warning messages if no errors are present
let g:vimtex_quickfix_open_on_warning = 0  

" Use vimtex format
let g:vimtex_format_enabled = 1

" Disable continuous
let g:vimtex_compiler_latexmk = {'continuous': 0}

" Disable auto indent
let g:vimtex_indent_lists = []

