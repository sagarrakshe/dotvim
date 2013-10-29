"pathogen
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent on     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab
set dictionary+=/usr/share/dict/words


syntax on
filetype plugin indent on

"my-customization
map \l :setlocal number!<CR>
map \o :set paste!<CR>
map <F2> :echo 'Current time is ' . strftime('%c')<CR>

filetype plugin on
let g:pydiction_location = '/home/sagar/.vim/bundle/Pydiction/complete-dict'

"mapped keys
map <C-Tab> gt
map <C-S-Tab> gT
noremap <silent> <C-S> : update<CR>
noremap <silent> <C-N> : tabnew<CR>
imap jj <Esc>
noremap <C-L> :nohl<CR><C-L>
inoremap ;<cr> <end>;
nmap <silent> <C-D> :NERDTreeToggle<CR>
inoremap <Space><cr> <end><cr>
inoremap <Space><Space><cr> <end>
noremap <silent><F5> : update<CR>
inoremap ,, <ESC>f"i<Right>,
inoremap ,<cr> <ESC>f'i<Right>,
inoremap )) <ESC>f)i<Right>
inoremap ]] <ESC>f]i<Right>
noremap j gj
noremap k gk

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

"setting font 
set guifont=Monospace\ 12

colorscheme Monokai 
set noswapfile
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

"My-Bundles
Bundle "jiangmiao/auto-pairs"
Bundle "Rip-Rip/clang_complete"
Bundle "wincent/Command-T"
Bundle "kien/ctrlp.vim"
Bundle "Lokaltog/vim-easymotion"
Bundle "davidhalter/jedi-vim"
Bundle "terryma/vim-multiple-cursors"
Bundle "Shougo/neocomplcache.vim"
Bundle "scrooloose/nerdtree"
Bundle "ervandew/supertab"
Bundle "scrooloose/syntastic"
Bundle "vim-scripts/taglist.vim"
Bundle "aperezdc/vim-template"
Bundle "vim-scripts/tComment"
Bundle "tpope/vim-fugitive"
Bundle "Lokaltog/vim-powerline"
Bundle "tpope/vim-sensible"
Bundle "tpope/vim-surround"
Bundle "Valloric/YouCompleteMe"
Bundle "mrinterweb/vim-visual-surround.git"
