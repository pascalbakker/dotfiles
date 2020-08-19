if has ('nvim')
		" nvim setup
		set number
		set cursorline
		syntax on
		set tabstop=4
		filetype indent on
		set tabstop=4
		set showcmd
		filetype indent on
		set wildmenu
		set lazyredraw
		set showmatch
		set incsearch
		set hlsearch
		set foldmethod=indent
		set foldenable
		set foldlevelstart=10
else 
		" vim setup
		set number
		set cursorline
		syntax on
		set tabstop=4
		filetype indent on
		colorscheme monokai
		set tabstop=4
		set showcmd
		filetype indent on
		set wildmenu
		set lazyredraw
		set showmatch
		set incsearch
		set hlsearch
		set foldmethod=indent
		set foldenable
		set foldlevelstart=10


		" Hotkeys
		" Searching turn off 
		nnoremap <leader><space> :nohlsearch<CR>
		" Close code block
		nnoremap <space> za
		" press S to find and replace
		nnoremap S :%s//g<Left><Left> 



		" Plugins
		set rtp+=~/.vim/bundle/Vundle.vim
		call vundle#begin()
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'preservim/nerdtree'
		" Add plugins here
		call vundle#end()
		filetype plugin indent on

		" Plugin settings
		"autocmd vimenter * NERDTree
		nnoremap <C-x> :NERDTree<CR>
		" Specify a directory for plugins 
		call plug#begin('~/.vim/plugged')


		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
		Plug 'markonm/traces.vim'
		call plug#end()
endif
