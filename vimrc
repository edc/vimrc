set modelines=5
set formatoptions+=r
set wildignore+=*.pyc
nmap <D-e> :NERDTree<CR>
nmap <D-E> :NERDTree 

"load pathogen
call pathogen#infect()

"indentation
filetype plugin indent on

"coffee
au BufNewFile,BufReadPost *.coffee setl sw=2 ts=2 expandtab

"python
au BufNewFile,BufReadPost *.pyp setl sw=4 ts=4 expandtab

"window 
let mapleader = ","
nmap <Leader>s :new<CR>
nmap <Leader>v :vne<CR>
nmap <Leader>o <C-w>o
nmap <Leader>c <C-w>c
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
nmap <Leader>t <C-w>t
nmap <Leader>p <C-w>p
nmap <Leader>x <C-w>x

"basic setup
set hidden
set ignorecase
set showmatch
set nobackup
set nocompatible
set cursorcolumn
syntax on

"CtrlP
nnoremap <silent> <Leader>t :CtrlP<CR>
nnoremap <silent> <Leader>T :CtrlPTag<CR>
nnoremap <silent> <Leader>d :CtrlPBookmarkDir<CR>
nnoremap <silent> <Leader>C :CtrlPChange<CR>
let g:ctrlp_extensions = ['tag', 'undo', 'changes', 'bookmarkdir']

"color override
hi Comment guifg=#aa4444 gui=italic
hi CursorColumn guibg=#292929 guifg=#ffffff ctermbg=233 ctermfg=230
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"remote editing
let g:netrw_http_cmd="wget"
let g:netrw_http_xcmd="-q -O"

"taglist
let Tlist_Use_Right_Window = 1
let g:Tlist_Ctags_Cmd = "/usr/local/bin/ctags"
let Tlist_Compact_Format = 1
nnoremap <silent> <Leader>i :TlistOpen<CR>
nnoremap <silent> <Leader>o :TlistToggle<CR>

"nerdtree
let NERDTreeIgnore = ['\.pyc$']

"tag
map <Leader>a :sp <CR>:exec("tag ".expand("<cword>"))<CR>

source ~/.vim/counsyl.vim
