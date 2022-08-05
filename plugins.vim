call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" defx file sys
	Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
	Plug 'kristijanhusak/defx-icons'
	Plug 'kristijanhusak/defx-git'

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
	Plug 'antoinemadec/coc-fzf'

	" git
	Plug 'tpope/vim-fugitive'
	Plug 'airblade/vim-gitgutter'
  Plug 'mhinz/vim-signify'

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

	" markDown
	Plug 'godlygeek/tabular'
	Plug 'preservim/vim-markdown'
  Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

	" tailwind
	Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}

	" color preview
	Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

	" colorscheme
	Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
call plug#end()
