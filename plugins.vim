call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'jiangmiao/auto-pairs'

	" defx file sys
	Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'kristijanhusak/defx-icons'

	Plug 'sheerun/vim-polyglot'

	" 註解
	Plug 'preservim/nerdcommenter'

	" color scheme
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()
