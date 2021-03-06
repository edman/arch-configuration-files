
colorscheme anotherdark
filetype plugin indent on

" maps Ctrl-F6 to eclipse's Ctrl-F6 key binding (switch editors)
nmap <silent> <c-f6> :call eclim#vimplugin#FeedKeys('Ctrl+F6')<cr>

" maps Ctrl-F7 to eclipse's Ctrl-F7 key binding (switch views)
nmap <silent> <c-f7> :call eclim#vimplugin#FeedKeys('Ctrl+F7')<cr>

" maps Ctrl-F to eclipse's Ctrl-Shift-R key binding (find resource)
nmap <silent> <c-f> :call eclim#vimplugin#FeedKeys('Ctrl+Shift+R')<cr>

" maps Ctrl-M to eclipse's Ctrl-M binding to maximize the editor
nmap <silent> <c-m> :call eclim#vimplugin#FeedKeys('Ctrl+M', 1)<cr>



