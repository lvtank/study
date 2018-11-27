
set nocompatible	" Use Vim defaults (much better!)
set bs=indent,eol,start		" allow backspacing over everything in insert mode
set viminfo='20,\"500	" read/write a .viminfo file, don't store more
set history=500		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Uncomment the following to have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" search
set showmatch		" Show matching brackets.
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
set ignorecase
set nowrapscan

" code read
"filetype plugin indent on
filetype on
syntax on
set cin
set ai
set foldmethod=syntax
set foldlevel=100
set noexpandtab
set tabstop=8
set shiftwidth=8
let local_vimrc = findfile(".vimrc.local", ".;")
if filereadable(local_vimrc)
  exec "source "local_vimrc
endif
function! Tab4()
    set ts=4
    set sw=4
    set expandtab
endfunction
noremap <Leader>4 :call Tab4()<cr>
function! Tab8()
    set ts=8
    set sw=8
    set noexpandtab
endfunction
noremap <Leader>8 :call Tab8()<cr>

" file
set nu
set noswapfile
set nobackup
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

" Cursor
set cursorline
"set cursorcolumn
"hi CursorLine term=reverse cterm=NONE ctermbg=black ctermfg=NONE
"hi CursorColumn term=reverse cterm=NONE ctermbg=black ctermfg=NONE
set scrolloff=3


" move
noremap <C-j> <C-e>
noremap <C-k> <C-y>

" Tag list settings
"map <F4> :Tlist<CR>
nnoremap <Leader>tl :Tlist<CR>
let Tlist_Exit_OnlyWindow = 1
let Tlist_Auto_Open = 1
let Tlist_Show_One_File=1
let Tlist_Sort_Type = 'name'

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
map <F2> :mksession! ~/.vim_session <cr> " Quick write session with F2
map <F3> :source ~/.vim_session <cr>     " And load session with F3


" copy paste
vmap <C-y>  :w! ~/.vimbuf<CR>
nmap <C-y>  :. w! ~/.vimbuf<CR>
nmap <C-p>  :r ~/.vimbuf<CR>

