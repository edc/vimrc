colorscheme macvim
"colo moria
highlight Folded guibg=#3f3f3f guifg=#aaaaaa
set lines=100
set columns=80
set guioptions-=T
set showtabline=2
set guifont=consolas:h14
set bg=dark
set hlsearch
set smartcase

"window 
nmap \s :new<CR>
nmap \v :vne<CR>
nmap \o <C-w>o
nmap \c <C-w>c
nmap \j <C-w>j
nmap \k <C-w>k
nmap \h <C-w>h
nmap \l <C-w>l
nmap \t <C-w>t
nmap \p <C-w>p
nmap \x <C-w>x

"fullscreen
set fuoptions=maxhorz

"NERDTree
let g:NERDTreeQuitOnOpen=1
let g:NERDTreeShowBookmarks=1
