" My nvim setup
set guifont=DroidSansMono\ Nerd\ Font\ 11


" Plugins
filetype plugin indent on
syntax enable
call plug#begin('~/.vim/plugged')
		Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletion https://github.com/neoclide/coc.nvim
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Searching  https://github.com/junegunn/fzf
		Plug 'junegunn/fzf.vim'
		Plug 'markonm/traces.vim' " Highlights patterns. highly reccomend for regex https://github.com/markonm/traces.vim
		Plug 'preservim/nerdtree' "File System Browser https://github.com/preservim/nerdtree
		Plug 'preservim/nerdtree' |
					\ Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Vim nerdtree highlighting https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
		Plug 'ryanoasis/vim-devicons' " Vim devicons https://github.com/ryanoasis/vim-devicons
		" Plug 'jreybert/vimagit' " Vim git extension
		Plug 'PotatoesMaster/i3-vim-syntax' " Adds syntax highlighting for i3 config
		Plug 'terryma/vim-multiple-cursors' " Multiple Cursors https://github.com/terryma/vim-multiple-cursors
		Plug 'junegunn/goyo.vim' " Center text https://github.com/junegunn/goyo.vim
call plug#end()

" Disables nerd tree default icons


" Enable autocomplete in command mode
		set wildmode=longest,list,full
" Disable automatic commenting
		autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Removes all trailing whitespace
		autocmd BufWritePre * :%s/\s\+$//e
" Run xrdb when Xresources is updated
		autocmd BufWritePost ~/.Xresources,~/.Xdefaults ~xrdb %

" Hotkeys
let mapleader = ","
" NERDtree hotkey
		map <silent> <C-z> :NERDTreeToggle<CR>
" Searching turn off
		nnoremap <leader><space> :nohlsearch<CR>
" Close code block
		nnoremap <space> za
" press S to find and replace
		nnoremap S :%s//g<Left><Left>
" Goyo center text
		map <leader>f :Goyo \| set linebreak<CR>
" Enable and disable spell check
		map <leader>o :setlocal spell! spelllang=en_us<CR>
" Splits open at the bottom and right
		set splitbelow splitright
" Shortcutting split navigation
		map <C-h> <C-w>h
		map <C-j> <C-w>j
		map <C-k> <C-w>k
		map <C-l> <C-w>l
" Check file in shellcheck
"		map <leader>s :!clear && shellcheck %<CR>
" Copy and Paste from vim to system clipboard (need gvim installed)
		vnoremap <C-c> "+y
		map <C-v> "+P


" settings
filetype indent on
syntax on
set number
set cursorline
set tabstop=4
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldmethod=indent
set foldenable
set foldlevelstart=10
