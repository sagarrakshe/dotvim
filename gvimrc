" call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
if has("gui_running")
    set lines=9999 columns=9999
    set visualbell
    set vb t_vb=
endif 

set guioptions -=T "remove tool bar
" set guioptions -=m "remove menu bar

"Mappings
map <C-Q> "+gp
