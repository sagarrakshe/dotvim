"pathogen
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

syntax on
filetype off                   " required!
set nocompatible               " be iMproved
filetype plugin on
filetype plugin indent on

set smartindent 
set tabstop=4
set shiftwidth=4
set expandtab
set dictionary+=/usr/share/dict/words

"Setting Font 
set guifont=Monospace\ 12
colorscheme Monokai 
set noswapfile

"Folding Settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

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
Bundle "beyondmarc/opengl.vim"
Bundle "vim-scripts/TwitVim"

" change the mapleader from \ to ,
let mapleader=","

"Mapped Keys
map <leader>l :setlocal number!<CR>
map <leader>o :set paste!<CR>
map <C-Tab> gt
map <C-S-Tab> gT
map hs <C-w>s
map vs <C-w>v
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-u> <C-w>l
map <C-e> :Errors<CR>

"Insert Mode Mapping
imap jj <Esc>
inoremap ;<cr> <end>;
inoremap <Space><cr> <end><cr>
inoremap <Space><Space><cr> <end>
inoremap ,, <ESC>f"i<Right>,
inoremap ,<cr> <ESC>f'i<Right>,
inoremap )) <ESC>f)i<Right>
inoremap ]] <ESC>f]i<Right>

" Normal Mode Mapping
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR> 
nmap <silent> <leader>sv :so $MYVIMRC<CR>
noremap j gj
noremap k gk
noremap <silent> <C-S> : update<CR>
noremap <silent> <C-N> : tabnew<CR>
noremap <silent><F5> : update<CR>
noremap <C-L> :nohl<CR><C-L>
noremap + <C-a>
noremap - <C-x>
nnoremap ; :

" Visual Move Mapping
vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap { <ESC>`>a}<ESC>`<i{<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap ) <ESC>`>a)<ESC>`<i(<ESC>
vnoremap } <ESC>`>a}<ESC>`<i{<ESC>

"Save file as root from vim
cmap W w !sudo tee % >/dev/null

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:pydiction_location = '/home/sagar/.vim/bundle/Pydiction/complete-dict'

