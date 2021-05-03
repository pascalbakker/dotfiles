" -------------
" -- PLUGINS --
" -------------
call plug#begin('~/.vim/plugged')
		" =============================================
		" Language Server Tools
		" =============================================
		" Scala, java, python, haskell are used coc
		Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Autocompletion https://github.com/neoclide/coc.nvim
		Plug 'sheerun/vim-polyglot'
		"Plug 'rust-lang/rust.vim' "Rust
		Plug 'PotatoesMaster/i3-vim-syntax' " Adds syntax highlighting for i3 config
		"Plug 'dense-analysis/ale' " https://github.com/dense-analysis/ale
		Plug 'neovimhaskell/haskell-vim'
		"Plug 'alx741/vim-hindent' " Optional

		" =========
		" Debugging
		" =========
		Plug 'mfussenegger/nvim-dap'
		Plug 'nvim-treesitter/nvim-treesitter'
		Plug 'nvim-lua/popup.nvim'
		Plug 'nvim-lua/plenary.nvim'
		Plug 'nvim-telescope/telescope.nvim'
		Plug 'nvim-telescope/telescope-dap.nvim'
		Plug 'mfussenegger/nvim-dap-python'
		" Scala
		Plug 'puremourning/vimspector'
		Plug 'szw/vim-maximizer'


		" =========
		" Utilities
		" =========
		"Plug 'ktvoelker/sbt-vim' " Use sbt in vim  https://github.com/ktvoelker/sbt-vim
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
		Plug 'markonm/traces.vim' " Highlights patterns. highly recommend for regex https://github.com/markonm/traces.vim
		"Plug 'preservim/nerdtree' "File System Browser https://github.com/preservim/nerdtree
		Plug 'preservim/nerdtree' |
					\ Plug 'Xuyuanp/nerdtree-git-plugin'
		Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Vim nerdtree highlighting https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
		"Plug 'terryma/vim-multiple-cursors' " Multiple Cursors https://github.com/terryma/vim-multiple-cursors
		Plug 'jiangmiao/auto-pairs' " inserts brackets in pairs https://github.com/jiangmiao/auto-pairs
		Plug 'junegunn/goyo.vim' " Center text https://github.com/junegunn/goyo.vim
		Plug 'majutsushi/tagbar' " Tag bar for vim https://github.com/majutsushi/tagbar
		"Plug 'vim-scripts/ZoomWin' " Window full screen
		"Plug 'roxma/vim-window-resize-easy' " https://github.com/roxma/vim-window-resize-easy
		Plug 'airblade/vim-gitgutter' " Shows added git lines  https://github.com/airblade/vim-gitgutter
		Plug 'lambdalisue/suda.vim' " Sudo write to files

		Plug 'airblade/vim-rooter'
		"Plug 'tpope/vim-eunuch' " Unix Commands https://github.com/tpope/vim-eunuch

		" Debugging

		" ===========================
		" Aesthetic and Color Schemes
		" ===========================
		"Plug 'ryanoasis/vim-devicons' " Vim devicons https://github.com/ryanoasis/vim-devicons
		Plug 'habamax/vim-gruvbit' " Current color scheme
		Plug 'tomasr/molokai'
		"Plug 'junegunn/seoul256.vim' " color scheme   https://github.com/junegunn/seoul256.vim
		"Plug 'morhetz/gruvbox' "https://github.com/morhetz/gruvbox
		"Plug 'joshdick/onedark.vim' " color scheme https://github.com/joshdick/onedark.vim
		"Plug 'phanviet/vim-monokai-pro' "color scheme https://github.com/phanviet/vim-monokai-pro
		Plug 'vim-airline/vim-airline' " Adds status bar at bottom of vim https://github.com/vim-airline/vim-airline
		Plug 'bluz71/vim-nightfly-guicolors' "https://github.com/bluz71/vim-nightfly-guicolors
		Plug 'ap/vim-css-color' " color highlights for hex codes https://github.com/skammer/vim-css-color
		"Plug 'aswathkk/darkscene.vim'

		" =========================
		" LANGUAGE SPECIFIC PLUGINS
		" =========================
		" =======
		" Haskell
		" =======
		"Plug 'neovimhaskell/haskell-vim'
		"Plug 'alx741/vim-hindent' " Optional

		" ======
		" Python
		" ======
		"Plug 'jeetsukumaran/vim-pythonsense' " python text objects and motions https://github.com/jeetsukumaran/vim-pythonsense
		"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'} " syntax highlighting. not used https://github.com/numirias/semshi

		" =====
		" Other
		" =====
		"Plug 'motus/pig.vim' " Apache Pig Syntax https://github.com/motus/pig.vim

		" Currently Deactivated
		" Plug 'jreybert/vimagit' " Vim git extension
		" Vim haskell plugins http://marco-lopes.com/articles/Vim-and-Haskell-in-2019/
		call plug#end()

" Extensions

