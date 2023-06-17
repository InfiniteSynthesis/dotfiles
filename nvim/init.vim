""" Use , for <leader>
let mapleader = ","

""" Plugins
call plug#begin()

	Plug 'mhinz/vim-startify'                         " Start screen
	Plug 'preservim/nerdtree'
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

""" Custom Configs include.
runtime! config/**/*

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

