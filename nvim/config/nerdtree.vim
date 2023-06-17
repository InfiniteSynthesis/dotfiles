""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerdtree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use <Leader>d to toggle display of the NERDTree window
map <Leader>d :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '»'
let g:NERDTreeDirArrowCollapsible = '«'

" Every time we change directories in NERDTree, use the
" new directory as the current working directory for Vim.
let NERDTreeChDirMode=2

" Show hidden files by default.
let NERDTreeShowHidden=1
