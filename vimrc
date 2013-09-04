set nocompatible               " be iMproved
filetype off                   " required!

filetype plugin indent on     " required!
 
set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab


execute pathogen#infect()
syntax on
filetype plugin indent on

"my-customization
:map \l :setlocal number!<CR>
:map \o :set paste!<CR>
:map <F2> :echo 'Current time is ' . strftime('%c')<CR>
:inoremap <c-s> :<ESC><CR>

filetype plugin on
let g:pydiction_location = '/home/sagar/.vim/bundle/Pydiction/complete-dict'

"mapped keys
:map <C-Tab> gt
:noremap <silent> <C-S> : update<CR>
:noremap <silent> <C-N> : tabnew<CR>
:imap jj <Esc>
:noremap <C-L> :nohl<CR><C-L>
:inoremap ;<cr> <end>;<cr>
:nmap <silent> <C-D> :NERDTreeToggle<CR>
:inoremap <Space><cr> <end><cr>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"setting font 
set guifont=Monospace\ 13
