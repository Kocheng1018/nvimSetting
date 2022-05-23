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
" one
" let g:airline_theme='one'
" let g:one_allow_italics = 1 " italic for comments
" set background=dark
" colorscheme one

" -----------
" solarized8
" set background=dark
" let g:solarized_statusline="low"
" colorscheme solarized8_low
"
" -----------
" NeoSolarized
set background=dark
" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
let g:neosolarized_contrast = "normal"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "normal"

" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" enable/disable NeoSolarized  displaying bold, underlined or italicized
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
let g:neosolarized_termBoldAsBright = 1
let g:neosolarized_termtrans = 1
set cursorline
"set cursorcolumn

" Set cursor line color on visual mode
highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40

highlight LineNr cterm=none ctermfg=240 guifg=#2b506e guibg=#000000

augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END
colorscheme NeoSolarized
