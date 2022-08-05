"  colorscheme
" 终端显示256色
set t_Co=256

" 開啟程式碼highlight。
syntax enable

" 開啟超過256色
if has("termguicolors")
    " fix bug for vim
    set t_8f=^[[38;2;%lu;%lu;%lum
    set t_8b=^[[48;2;%lu;%lu;%lum
    " enable true color
    set termguicolors
endif

"-----------
" onedark
" let g:lightline = {
"			\ 'colorscheme': 'onedark'
"			\}
" let g:airline_theme="onedark"
" colorscheme onedark
" -----------
" tokyonight
" let g:tokyonight_style="night"
" colorscheme tokyonight
"
" -----------
" one
let g:airline_theme='one'
let g:one_allow_italics = 1 " italic for comments
set background=dark
colorscheme one

" -----------
" solarized8
" set background=dark
" let g:solarized_statusline="low"
" colorscheme solarized8_low
"
" -----------
" NeoSolarized
" set background=dark
" let g:neosolarized_contrast = "normal"
" let g:neosolarized_visibility = "normal"
" let g:neosolarized_vertSplitBgTrans = 1
" let g:neosolarized_bold = 1
" let g:neosolarized_underline = 1
" let g:neosolarized_italic = 1
" let g:neosolarized_termBoldAsBright = 1
" let g:neosolarized_termtrans = 1
" set cursorline
"
" highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
" highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000
"
" augroup BgHighlight
"   autocmd!
"   autocmd WinEnter * set cul
"   autocmd WinLeave * set nocul
" augroup END
" colorscheme NeoSolarized
