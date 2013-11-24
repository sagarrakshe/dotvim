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
set incsearch
set ignorecase
set smartcase
set noswapfile
set showcmd

"Setting Font 
"Programming Font
set guifont=Fira\ Mono\ 12
colorscheme Monokai 

"Code Folding Settings
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
Bundle "vim-scripts/a.vim"
Bundle "milkypostman/vim-togglelist"
Bundle "majutsushi/tagbar"
Bundle "sagarrakshe/CoVim"
Bundle "sagarrakshe/ack.vim"
Bundle "honza/vim-snippets"
Bundle "jceb/vim-orgmode"

" change the mapleader from \ to ,
let mapleader=","

"Mapped Keys
map <leader>l :setlocal number!<CR>
map <leader>o :set paste!<CR>
map <C-Tab> gt
map <C-S-Tab> gT
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-u> <C-w>l

"Insert Mode Mapping
imap jj <Esc>
inoremap ;<cr> <end>;
inoremap <Space><cr> <end><cr>
inoremap <Space><Space><cr> <end>
inoremap ,, <ESC>f"i<Right>,
inoremap ,<cr> <ESC>f'i<Right>,
inoremap )) <ESC>f)i<Right>
inoremap ]] <esc>f]i<right>

" Normal Mode Mapping
nmap <silent> <leader>ev :e $MYVIMRC<CR> 
nmap <silent> <leader>sv :so $MYVIMRC<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR> 
map Q :q!

" nmap <F5> :Errors<CR>
nmap gmail :!vmail<CR>
noremap j gj
noremap k gk
noremap <silent> <C-S> : update<CR>
noremap <silent> <C-N> : tabnew<CR>
noremap <silent><F5> : update<CR>
noremap <C-L> :nohl<CR><C-L>
noremap + <C-a>
noremap - <C-x>
nnoremap ; :
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>

" Visual Move Mapping
vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap { <ESC>`>a}<ESC>`<i{<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>
vnoremap ) <ESC>`>a)<ESC>`<i(<ESC>
vnoremap } <ESC>`>a}<ESC>`<i{<ESC>

" Command-line Mapping
cnoremap <C-a>  <Home>
cnoremap <C-b>  <Left>
cnoremap <C-f>  <Right>
cnoremap <C-d>  <Delete>
cnoremap <M-b>  <S-Left>
cnoremap <M-f>  <S-Right>
cnoremap <M-d>  <S-right><Delete>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <Esc>d <S-right><Delete>
cnoremap <C-g>  <C-c>

"Save file as root from vim
cmap W w !sudo tee % >/dev/null

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:pydiction_location = '/home/sagar/.vim/bundle/Pydiction/complete-dict'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
