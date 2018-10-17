"py3 print("ok")
set modelines=5
set formatoptions+=r
set wildignore+=*.pyc
nmap <D-e> :NERDTree<CR>
nmap <D-E> :NERDTree 

"indentation
filetype plugin indent on

"coffee
au BufNewFile,BufReadPost *.coffee setl sw=2 ts=2 expandtab

"python
au BufNewFile,BufReadPost *.py setl sw=4 ts=4 expandtab tw=79

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
nmap <Leader>z <C-w>z

"basic setup
set hidden
set ignorecase
set showmatch
set nobackup
set nocompatible
"set cursorcolumn
set showtabline=1
set incsearch
syntax on
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
nnoremap X :bd<cr>
nmap <Leader>d :TernDef<CR>
nmap <Leader>D :TernType<CR>
nmap <Leader>K :TernDoc<CR>
nmap <D-C> b"*yw
command! -nargs=+ Grep execute 'silent grep! <args>' | copen 20
"nmap <Leader>g :Grep <cword> <CR>

"motion
nmap f <Plug>(easymotion-overwin-f)
nmap w <Plug>(easymotion-overwin-w)
vmap f <Plug>(easymotion-bd-f)
vmap b <Plug>(easymotion-bd-b)
vmap e <Plug>(easymotion-bd-e)

"CtrlP
nnoremap <silent> <Leader>t :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['packages', 'package.json']


"color override
hi Comment guifg=#aa4444 gui=italic
hi CursorColumn guibg=#292929 guifg=#ffffff ctermbg=233 ctermfg=230
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"remote editing
let g:netrw_http_cmd="wget"
let g:netrw_http_xcmd="-q -O"

"nerdtree
let NERDTreeIgnore = ['\.pyc$']

"tag
map <Leader>a :sp <CR>:exec("tag ".expand("<cword>"))<CR>

"ES6
autocmd BufRead,BufNewFile *.es6 setfiletype javascript


source ~/.vim/a.vim
source ~/.vim/magic.vim
source ~/.vim/neobundle.vim

"jedi
let g:jedi#popup_on_dot=0
let g:jedi#use_tabs_not_buffers=1

"Unite
call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ 'git5/.*/review/',
      \ 'google/obj/',
      \ 'tmp/',
      \ '.sass-cache',
      \ 'node_modules/',
      \ 'bower_components/',
      \ 'dist/',
      \ '.git5_specs/',
      \ 'watched_assets/',
      \ '.pyc',
      \ '.idea',
      \ ], '\|'))

if executable('ag')
  let g:unite_source_rec_async_command= 'ag --follow --nocolor --nogroup --hidden -g ""'
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nocolor --column --nogroup --nogroup --ignore-dir south_migrations'
  let g:unite_source_grep_recursive_opt = ''

  " Use ag for grep. Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

" let g:unite_source_rec_max_cache_files = 99999

" See https://github.com/Shougo/unite.vim/issues/236#issuecomment-51983184
let g:unite_source_rec_unit = 250

let g:unite_source_history_yank_enable = 1
" call unite#filters#sorter_default#use(['sorter_rank'])
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#custom#source('tag', 'matchers', 'matcher_regexp')
nnoremap <leader>t :<C-u>Unite file_rec/git -start-insert<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>g :<C-u>UniteWithCursorWord grep:.<cr>
nnoremap <leader>G :<C-u>Unite -no-split grep:.<cr>
nnoremap <leader>/ :<C-u>Unite -no-split outline<cr>
nnoremap <leader>? :<C-u>Unite -no-split line<cr>

let g:jsx_ext_required = 0

set completefunc=LanguageClient#complete
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nmap <Leader>h :<C-u>call LanguageClient_textDocument_hover()<CR>
let g:LanguageClient_serverCommands = {
    \ 'go': ['/Users/eddie/.go-env/bin/go-langserver', '-gocodecompletion'],
    \ }

