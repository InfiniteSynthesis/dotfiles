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
	Plug 'christoomey/vim-tmux-navigator'             " tmux navigator
	" Theme
	Plug 'folke/tokyonight.nvim'
	" Formatter
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
	" Language
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'SirVer/ultisnips'
	Plug 'lervag/vimtex'
	Plug 'pangloss/vim-javascript'
	Plug 'leafgarland/typescript-vim'
	Plug 'MaxMEllon/vim-jsx-pretty'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

call plug#end()

""" Custom Configs include.
runtime! plugconf/**/*

