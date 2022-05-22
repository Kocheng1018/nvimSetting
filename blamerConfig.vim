" 開啟
let g:blamer_enabled = 1

" 顯示時間差
let g:blamer_delay = 300

" 在哪些模式關閉
let g:blamer_show_in_visual_modes = 0
let g:blamer_show_in_insert_modes = 0

" 時間格式 https://devhints.io/datetime#strftime-format
let g:blamer_date_format = '%Y/%m/%d %H:%M'

" 是否開啟相對時間
let g:blamer_relative_time = 1

" commenter profix
let g:blamer_prefix = ' '

" 顯示的 template 樣式 default '<committer>, <committer-time> • <summary>'
"Available options:
" <author>, <author-mail>, <author-time>,
" <committer>, <committer-mail>, <committer-time>,
" <summary>,
" <commit-short>, <commit-long>.
let g:blamer_template = '>> <committer>, <committer-time> • <summary>'
