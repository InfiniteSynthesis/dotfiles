""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Lightline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:lightline = {
	\ 'colorscheme': 'tokyonight',
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
	\     'modified': '(&filetype!="help" && (&modified || !&modifiable))',
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


