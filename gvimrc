" call system('wmctrl -i -b add,maximized_vert,maximized_horz -r '.v:windowid)
if has("gui_running")
    set lines=9999 columns=9999
endif 
