filetype off
filetype plugin indent on
set cinoptions=:0,(0,u0,W1s
set modelines=5
set formatoptions+=r
nmap <D-e> :NERDTree<CR>
nmap <D-E> :NERDTree 

"load pathogen
call pathogen#infect()

"coffee
"au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
au BufNewFile,BufReadPost *.coffee setl sw=4 ts=4 expandtab

"color override
hi Comment guifg=#aa4444 gui=italic
hi CursorColumn guibg=#292929 guifg=#ffffff ctermbg=233 ctermfg=230

"basic setup
set hidden
set ignorecase
set showmatch
set title
set visualbell
set noerrorbells
set nobackup
set nocompatible
set cursorcolumn
