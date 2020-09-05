" -------------
" -- PLUGINS --
" -------------
call plug#begin('~/.vim/plugged')
		" Language Server Toosl
		Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletion https://github.com/neoclide/coc.nvim
		" Utilities
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy Searching  https://github.com/junegunn/fzf
		Plug 'junegunn/fzf.vim'
		Plug 'markonm/traces.vim' " Highlights patterns. highly reccomend for regex https://github.com/markonm/traces.vim
		Plug 'preservim/nerdtree' "File System Browser https://github.com/preservim/nerdtree
		Plug 'preservim/nerdtree' |
					\ Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Vim nerdtree highlighting https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
		" Aesthetic
		Plug 'ryanoasis/vim-devicons' " Vim devicons https://github.com/ryanoasis/vim-devicons
		" Plug 'jreybert/vimagit' " Vim git extension
		Plug 'PotatoesMaster/i3-vim-syntax' " Adds syntax highlighting for i3 config
		Plug 'terryma/vim-multiple-cursors' " Multiple Cursors https://github.com/terryma/vim-multiple-cursors
		Plug 'junegunn/goyo.vim' " Center text https://github.com/junegunn/goyo.vim
		Plug 'vim-airline/vim-airline' " Adds status bar at bottom of vim https://github.com/vim-airline/vim-airline
		" Vim haskell plugins http://marco-lopes.com/articles/Vim-and-Haskell-in-2019/
		Plug 'neovimhaskell/haskell-vim' "Haskell syntax highlighting https://github.com/neovimhaskell/haskell-vim
		Plug 'alx741/vim-hindent' " haskell files get automatically prefitted on save
		Plug 'majutsushi/tagbar' " Tag bar for vim https://github.com/majutsushi/tagbar
		" Color schemes
		Plug 'morhetz/gruvbox' "https://github.com/morhetz/gruvbox
		Plug 'bluz71/vim-nightfly-guicolors' "https://github.com/bluz71/vim-nightfly-guicolors
		Plug 'joshdick/onedark.vim' " color scheme
		Plug 'phanviet/vim-monokai-pro' "https://github.com/phanviet/vim-monokai-pro
		" Scala
		" C and C++
		Plug 'ap/vim-css-color'
call plug#end()


