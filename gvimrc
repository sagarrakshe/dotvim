" Call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
if has("gui_running")
  set lines=9999 columns=9999
  set visualbell
  set vb t_vb=
endif

set guioptions=Ace
set guioptions-=T "remove tool bar
set guioptions-=m "remove menu bar

set background=light
" set guifont=Andale\ Mono\ 13
colorscheme molokai

" Mappings
map <C-Q> "+gp

" Insert Mode Mapping
imap jj <Esc>

" Disable cursor blink
set guicursor+=a:blinkon0

" Faster switching to tabs (works in gvim) (Eg. alt+1 goes to tab 1)
nmap <M-1> :tabnext 1<CR>
nmap <M-2> :tabnext 2<CR>
nmap <M-3> :tabnext 3<CR>
nmap <M-4> :tabnext 4<CR>
nmap <M-5> :tabnext 5<CR>
