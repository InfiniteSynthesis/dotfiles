" Most VimTeX mappings rely on localleader.
let maplocalleader = "," 

" This will only work if `vim --version` includes `+clientserver`!
if empty(v:servername) && exists('*remote_startserver')
	call remote_startserver('VIM')
endif

" Linebreak at column 80.
setlocal linebreak
setlocal textwidth=80
setlocal spell
