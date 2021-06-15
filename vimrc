" First to come, use ViM defaults and not Vi (be iMproved)
set nocompatible

" pathogen
execute pathogen#infect()
call pathogen#incubate()
call pathogen#helptags()

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Hightlight syntax
syntax on
filetype off                   " required!
filetype plugin on
filetype plugin indent on

set colorcolumn=80
set smartindent
set nonumber        " don't show line numbers
set autoindent      " always set autoindenting on
set copyindent      " copy the previous indentation on autoindenting
set tabstop=2       " tab is 4 spaces
set shiftwidth=2    " number of spaces to use for autoindenting
set expandtab       " use appropriate number of spaces when tabbing
set shiftround      " use multiple of shiftwidth when indenting with '<' and '>'
set ignorecase      " ignore case while search
set incsearch       " show search matches as you type
set smartcase       " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab        " insert tabs on the start of a line according to shiftwidth, not tabstop
set noswapfile      " disable swap file creation
set history=1000    " remember more commands and search history
set undolevels=1000 " use many muchos levels of undo
set title           " change the terminal's title
set ruler           " show the cursor position all the time
set showcmd         " show current command in bottom line
set wildignore=*.swp,*.bak,*.pyc,*.class,*/migrations/*,*/blackhole__/*,*/tmp/*,*/search*/*

set list
set invlist
set listchars=tab:>.,trail:.,extends:#,nbsp:.  " highlight whitespace
set viminfo='20,\"50 " Tell vim to remember certain things when we exit

set hidden        " allow buffers to be hidden
set mouse=a      " Enable mouse support in console if you are into weird shit

" use system dictionary for auto-completion of english words
set dictionary+=/usr/share/dict/words

" disable auto comment insertion on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Cool tab completion stuff while entering commands
set wildmenu
set wildmode=list:longest,full

" tags directory
set tags=~/tmp_da/tags

" Setting Font
" Programming Font
" set guifont=Fira\ Mono\ 12
colorscheme molokai
" set background=dark

" Code Folding Settings
set foldmethod=indent   " fold based on indent
set foldnestmax=10      " deepest fold is 10 levels
set nofoldenable        " dont fold by default
set foldlevel=1         " this is just what i use

" change the mapleader from \ to ,
let mapleader=","

" Toggle line number
map <leader>l :setlocal number!<CR>

" Toggle paste mode
map <leader>o :set paste!<CR>

" forward cycling through tabs
map <C-Tab> gt
" backward cycling through tabs
map <C-S-Tab> gT

" key mapping to switch between the split buffers
map <C-o>j <C-w>j
map <C-o>k <C-w>k
map <C-o>h <C-w>h
map <C-o>l <C-w>l

" shortcut to close buffer
map <leader>q :q!<CR>

" Search mappings: These will make it so that going to the next one in a
" search will center on the line it's found in.
map N Nzz
map n nzz

" Cycle through buffers
map <c-b> :CtrlPBuffer<CR>

" Insert Mode Mapping
imap jj <Esc>

" append semi-colon at the end
inoremap ;<cr> <end>;

" Normal Mode Mapping
" open vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
" open gvimrc
nmap <silent> <leader>eg :e $MYGVIMRC<CR>

" source vimrc
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" source gvimrc
nmap <silent> <leader>sg :so $MYGVIMRC<CR>

" toggle NERDTree
nmap <silent> <leader>D :NERDTreeToggle<CR>

" toggle Tagbar
nmap <F8> :TagbarToggle<CR>

" toggle syntastic checker
nmap <F3> :SyntasticToggleMode<CR>

" Magically move up and down in the same wrapped line!
noremap j gj
noremap k gk

" noremap <silent> <C-S> :update<CR>
" noremap <silent> <C-N> :tabnew<CR>

noremap <C-L> :nohl<CR><C-L>

" save keystroke
nnoremap ; :

" Arrow keys are evil
" noremap <Up> <nop>
" noremap <Down> <nop>
" noremap <Left> <nop>
" noremap <Right> <nop>

noremap <F12> <Esc>:syntax sync fromstart<CR>
inoremap <F12> <C-o>:syntax sync fromstart<CR>

" Fugitive plugin
nnoremap <space>gs :Gstatus<CR>
nnoremap <space>gt :Gcommit -v -q %:p<CR>


" Copy to clipboard
noremap <Leader>y "*y
noremap <Leader>Y "+y


" Visual Move Mapping
" put bracket/quotes around the selected text
vnoremap ( <ESC>`>a)<ESC>`<i(<ESC>
vnoremap { <ESC>`>a}<ESC>`<i{<ESC>
vnoremap ) <ESC>`>a)<ESC>`<i(<ESC>
vnoremap } <ESC>`>a}<ESC>`<i{<ESC>
vnoremap " <ESC>`>a"<ESC>`<i"<ESC>
vnoremap ' <ESC>`>a'<ESC>`<i'<ESC>

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
" cnoremap <C-g>  <C-c>

" Save file as root from vim
cmap w!! w !sudo tee % >/dev/null

"match OverLength /\%81v.\+/
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" Matching brackets

" let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
" let g:pydiction_location = '~/.vim/bundle/Pydiction/complete-dict'
let g:ycm_python_binary_path = 'python'
" let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:jedi#popup_select_first = 0
let g:syntastic_python_checkers = ['flake8']
" let g:AutoPreview_enabled = 1
" let g:AutoPreview_allowed_filetypes = ["c","cpp"]
let NERDTreeIgnore = ['\.pyc$', 'node_modules', '__pycache__']
let g:NERDTreeDirArrows=0
" let g:clang_library_path = '/usr/lib/llvm-3.4/lib/libclang.so'
" let g:clang_debug = 1
" let g:clang_user_options='|| exit 0'
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }
set laststatus=2

" don't comment blank lines(t-comment)
" let g:tcomment#blank_lines = 0

" JsHint error indicator
hi SpellBad cterm=underline,bold ctermbg=white ctermfg=black

" Line number colors
hi LineNr ctermbg=black ctermfg=yellow

" Hide arrows for nerdtree

" Use 256 colors when opened in terminal
let &t_Co=256

" Autocompletion menu colors
hi Pmenu ctermfg=black ctermbg=white
hi PmenuSel ctermfg=white ctermbg=yellow

" Remap code completion to Ctrl+Space {{{2
inoremap <Nul> <C-x><C-o>

" mapped <F5> to display error in quickfix window
function! ToggleQuickFix()
  if exists("g:qwindow")
    lclose
    unlet g:qwindow
  else
    try
      Errors
      let g:qwindow = 1
    catch
      echo "No Errors found!"
    endtry
  endif
endfunction
nmap <script> <silent> <F5> :call ToggleQuickFix()<CR>

" set cursor color
highlight Cursor guifg=white guibg=black

" auto-reload vim once changed
augroup reload_vimrc " {
    autocmd!
    if has("gui_running")
      autocmd BufWritePost $MYGVIMRC source $MYGVIMRC
    else
      autocmd BufWritePost $MYVIMRC source $MYVIMRC
    endif
    if exists(':Airline')
      AirlineRefresh
    endif
augroup END }"

" Toggle Maximize
function! MaximizeToggle()
  if exists("s:maximize_session")
    exec "source " . s:maximize_session
    call delete(s:maximize_session)
    unlet s:maximize_session
    let &hidden=s:maximize_hidden_save
    unlet s:maximize_hidden_save
  else
    let s:maximize_hidden_save = &hidden
    let s:maximize_session = tempname()
    set hidden
    exec "mksession! " . s:maximize_session
    only
  endif
endfunction

nnoremap <C-o>z :call MaximizeToggle()<CR>
nnoremap <C-a>d :g/^$/d<CR>

function! SortLines() range
  execute a:firstline . "," . a:lastline . 's/^\(.*\)$/\=strdisplaywidth( submatch(0) ) . " " . submatch(0)/'
  execute a:firstline . "," . a:lastline . 'sort n'
  execute a:firstline . "," . a:lastline . 's/^\d\+\s//'
endfunction


" directory specific vimrc
if filereadable(".vim.custom")
  so .vim.custom
endif

" copy to buffer
vmap <silent> <C-c> :w !xsel --clipboard --input<CR>
" nmap <C-c> :.w! ~/.vimbuffer<CR>
" paste from buffer
" map <C-p> :r ~/.vimbuffer<CR>

" Bundle Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'wookiehangover/jshint.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/tComment'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tmhedberg/matchit'
Plugin 'iamcco/markdown-preview.nvim'

noremap <leader>r :ToggleBool<CR>

" Go config
let g:go_disable_autoinstall = 0

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:go_gocode_autobuild=0

" Terraform
let g:terraform_align=1

" Clean this config
set splitright

" Hcl config
let g:hcl_fmt_autosave = 0
let g:tf_fmt_autosave = 0
let g:nomad_fmt_autosave = 0

" Close the preview buffer for go
set completeopt-=preview

