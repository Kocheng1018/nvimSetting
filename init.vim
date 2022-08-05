" 編碼
set encoding=utf8
set fileencodings=utf8
" ------------
" 預設vue預處理器
let g:vue_pre_processors = ['pug', 'scss']

" RRethy/vim-hexokinase color perview
let g:Hexokinase_highlighters = ['virtual']

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

autocmd CursorHold * silent call CocActionAsync('highlight')
" ------------
" 顯示行號[number]搭配。
set nu
set signcolumn=yes
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
" 開啟狀態列，設0就會關掉。
set laststatus=2
" 句子過長的自動換行
set nowrap
" 啟用滑鼠
set mouse=a
set title
set nobackup
set nowritebackup
set showcmd
set autoindent
set incsearch
set autoindent
set cindent
" 剪下複製功能同步到剪貼簿
set clipboard+=unnamed

" 底部 cmd 高度
set cmdheight=2

" vim 更新時間 default 4000ms
set updatetime=100

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

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

" 指令提示視窗
set wildmode=list:longest,full

" 用來看每個檔案的檔名 && 已決定要用哪種縮排方式
filetype indent on

" 設定leader 按鍵
let mapleader = "\<Space>"
nnoremap <SPACE> <Nop>
" ------------
"  Tabs

"  Open current directory
nmap te :tabnew % <CR>
nmap <Tab> :tabnext<Return>
nmap <S-Tab> :tabprev<Return>

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
map <C-q> <C-w>q
" --------------
" 均分 window
nmap <silent> <Leader>= <C-w>=

" -----------
" markup
map <silent> <Leader>c <Plug>(caw:hatpos:toggle)

" -----------
" autoSave
" let g:auto_save = 1

" ------------
" :noh 取消高亮
map <esc> :noh <CR>

" ------------
" :startify
let g:startify_change_to_vcs_root = 0
let g:startify_change_to_dir = 0
let g:startify_custom_header = [
        \'⠀       ⠀   (\__/) ',
        \'            (•ㅅ•) ',
        \'⠀       ＿ノヽ ノ＼＿ ',
        \'⠀    `/ `/ ⌒Ｙ⌒ Ｙ   ヽ ',
        \'⠀    ( 　(三ヽ人　 /  | ',
        \'⠀    |　ﾉ⌒＼ ￣￣ヽ  ノ ',
        \'⠀    ヽ＿＿＿＞､＿_／ ',
        \'  ⠀      ｜( 王 ﾉ〈  (\__/) ',
        \'    ⠀    /ﾐ`ー―彡 \  (•ㅅ•) ',
        \'     ⠀  / ╰    ╯  \  /    \> ',
        \ ]

let g:startify_custom_footer = [ ]

" ------------
" alias replace all each ask
nnoremap S :%s//gc<Left><Left><Left>

" ------------
" ctrl
nmap :Q :q
nmap :W :w

" ------------
" vim-gitgutter
let g:gitgutter_map_keys = 0
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap ghp <Plug>(GitGutterPreviewHunk)

" ----------
" markdown
let g:vim_markdown_folding_disabled = 1
let g:mkdp_auto_start = 0
let g:mkdp_theme = 'dark'



so $HOME/.config/nvim/plugins.vim
so $HOME/.config/nvim/colorScheme.vim
so $HOME/.config/nvim/defxConfig.vim
so $HOME/.config/nvim/blamerConfig.vim
so $HOME/.config/nvim/cocExtensions/cocConfig.vim
so $HOME/.config/nvim/cocExtensions/cocfzfpreviewConfig.vim

