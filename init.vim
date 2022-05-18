" 編碼
set encoding=utf8
set fileencodings=utf8
" ------------
let g:vue_pre_processors = ['pug', 'scss']
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
" 
" colorscheme onedark

" -----------
" one
" let g:airline_theme='one'
" let g:one_allow_italics = 1 " italic for comments
" set background=dark
" colorscheme one
" -----------
" nord
" colorscheme nord

" -----------
" solarized8
set background=dark
let g:solarized_statusline="low"
colorscheme solarized8_low

" ------------
" 顯示行號[number]搭配。
set nu 
" 自動對齊縮排，會保留上一行的tab數。
set ai 
" 可以不保存切換buffer
set hidden 
" 打字的那行會有底線。
set cursorline 
" 按一次tab縮排幾個空白
set tabstop=2 
" 按一次tab要有幾個空白的大小。
set shiftwidth=2 
" 把搜尋結果highlight起來
set hlsearch 
" 自動縮排，會比較像一般程式編輯器
set cindent 
" 開啟狀態列，設1就會關掉。
set laststatus=2 
" 句子過長的自動換行
set nowrap
set nobackup
set nowritebackup
set mouse=a
set showcmd
set autoindent
set incsearch
set autoindent
set cindent
set clipboard=unnamed

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" 检索时高亮显示匹配项
set hlsearch   
" 边输入边搜索
set incsearch    
" 搜索忽略大小写
set ignorecase                  
" 智能大小写搜索
set smartcase                   
set smartindent

" 最多15个Tab
set tabpagemax=15  

" 显示当前mode
set showmode  

" 它是用來看每個檔案的檔名已決定要用哪種縮排方式
filetype indent on 

let mapleader = "\<Space>"
nnoremap <SPACE> <Nop>

" ------------
" Windows

" Split window
nmap ss :split<Return><C-w>w
nmap sv :vsplit<Return><C-w>w
" Move window
nmap <Space> <C-w>w
map s<left> <C-w>h
map s<up> <C-w>k
map s<down> <C-w>j
map s<right> <C-w>l
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-l> <C-w>l
" --------------
" Resize window
nmap <silent> <Leader>= <C-w>=
nmap <silent> <Leader>> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nmap <silent> <Leader>< :exe "vertical resize " . (winwidth(0) * 2/3)<CR>
nmap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nmap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" -----------
" markup
map <silent> <Leader>c <Plug>(caw:hatpos:toggle)

" -----------
" autoSave
let g:auto_save = 1
" ------------
" :noh
map <esc> :noh <CR>

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/defxConfig.vim	
" so ~/.config/nvim/defxConfigFloating.vim
so ~/.config/nvim/cocConfig.vim	
so ~/.config/nvim/fzfConfig.vim	

