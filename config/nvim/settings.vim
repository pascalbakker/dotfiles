" --------------
" -- SETTINGS --
" --------------

" Appearance settings
syntax enable
set guifont=DroidSansMono\ Nerd\ Font\ 11

highlight ColorColumn ctermbg=darkgray

" General Settings
" filetype plugin indent on
set splitbelow
set number
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
colorscheme gruvbox
set showcmd
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
set foldmethod=indent
set foldenable
set foldlevelstart=10
set wildmode=longest,list,full


" Disable automatic commenting
		autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Removes all trailing whitespace
		autocmd BufWritePre * :%s/\s\+$//e
" Run xrdb when Xresources is updated
		autocmd BufWritePost ~/.Xresources,~/.Xdefaults ~xrdb %

" coc stuff
	autocmd FileType json syntax match Comment +\/\/.\+$+
	set hidden " textedit might fail if not set on
	set updatetime=300 " show diagnostic messages after 300ms
	set shortmess+=c " Don't give |ins-completion-menu| messages.
	set signcolumn=yes " always show sign column
	au BufRead,BufNewFile *.sbt,*.sc set filetype=scala " Help Vim recognize *.sbt and *.sc as Scala files

	function! s:show_documentation()
	  if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	  else
		call CocAction('doHover')
	  endif
	endfunction

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Remap for rename current word
	" Scala stuff
	let g:deoplete#enable_at_startup = 1

" C++ stuff
let &path.="src/include,/usr/include/AL,"
set makeprg=make\ -C\ ../build\ -j9
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

" Ensure files are read as what I want:
autocmd BufRead,BufNewFile *.md,*.markdown set filetype=markdown
autocmd BufRead,BufNewFile *.ms,*.me,*.mom,*.man set filetype=groff
autocmd BufRead,BufNewFile *.tex set filetype=tex
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
