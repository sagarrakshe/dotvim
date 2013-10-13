"pathogen
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

set nocompatible               " be iMproved
filetype off                   " required!

filetype plugin indent on     " required!
 
set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab
set dictionary+=/usr/share/dict/words


syntax on
filetype plugin indent on

"my-customization
:map \l :setlocal number!<CR>
:map \o :set paste!<CR>
:map <F2> :echo 'Current time is ' . strftime('%c')<CR>

filetype plugin on
let g:pydiction_location = '/home/sagar/.vim/bundle/Pydiction/complete-dict'

"mapped keys
:map <C-Tab> gt
:noremap <silent> <C-S> : update<CR>
:noremap <silent> <C-N> : tabnew<CR>
:imap jj <Esc>
:noremap <C-L> :nohl<CR><C-L>
:inoremap ;<cr> <end>;
:nmap <silent> <C-D> :NERDTreeToggle<CR>
:inoremap <Space><cr> <end><cr>
:inoremap <Space><Space><cr> <end>
:noremap <silent><F5> : update<CR>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"setting font 
set guifont=Monospace\ 12

colorscheme busybee
set noswapfile
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
