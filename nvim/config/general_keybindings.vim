""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General key-bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <Leader><Leader> as a shortcut to enter commands
nnoremap <Leader><Leader> :

" <Leader>w writes the current buffer to disk.
nmap <leader>w :w!<cr>

" <Leader>W writes the current buffer to disk and quits the window.
map <Leader>W :wq!<CR>

" <Leader>q quits the current window
map <Leader>q :q!<CR>

" <Leader>Q quits all windows.
map <Leader>Q :qa!<CR>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Hit escape twice to clear highlights.
noremap <silent><Esc><Esc> :nohls<CR>

" Keep search results in the center of the screen.
nnoremap <silent> n nzz
