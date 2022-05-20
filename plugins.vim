call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" defx file sys
	Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'kristijanhusak/defx-icons'

	Plug 'sheerun/vim-polyglot'
	" 註解
	Plug 'tyru/caw.vim'
	" 註解檔案類型及當下光標的語言類型判斷文件
	Plug 'Shougo/context_filetype.vim'

	" color scheme
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" vue highlight
	Plug 'posva/vim-vue'

	" auto save
	Plug '907th/vim-auto-save'

" fxf
	Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
	" Plug 'junegunn/fzf.vim' " needed for previews
	Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	Plug 'antoinemadec/coc-fzf'

	" git
	Plug 'tpope/vim-fugitive'

	" start screen
	Plug 'mhinz/vim-startify'

	" icons
	Plug 'ryanoasis/vim-devicons'

	" show who commit this line in git
	Plug 'APZelos/blamer.nvim'

	" Delete/change/add parentheses/quotes/XML-tags/much more with ease
	Plug 'tpope/vim-surround'

	"autotag
	Plug 'craigemery/vim-autotag'

	" colorscheme
call plug#end()
