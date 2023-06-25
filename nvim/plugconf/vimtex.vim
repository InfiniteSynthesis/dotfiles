""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vimtex
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Viewer options: One may configure the viewer either by specifying a built-in
" viewer method:
if has('mac')
	let g:vimtex_view_method = 'skim'
else
	let g:vimtex_view_method = 'zathura'
endif

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
