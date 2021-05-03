" --------------
" -- SETTINGS --
" --------------

" Appearance settings
syntax on
filetype plugin on
filetype plugin indent on
" 24 bit color
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
"colo gruvbit
colo molokai
"colorscheme gruvbit
set guifont=DroidSansMono\ Nerd\ Font\ 11
"highlight ColorColumn ctermbg=darkgray
"colorscheme gruvbox
set nocompatible


" General Settings
set splitbelow
set modifiable
set number
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=110
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
function! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
let g:syntastic_auto_jump = 0

		"autocmd BufWritePre * :%s/\s\+$//e
" Run xrdb when Xresources is updated
		autocmd BufWritePost ~/.Xresources,~/.Xdefaults ~xrdb %

" coc syntaxing settings
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

" Python settings
au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4


" Haskell HIE
"let g:LanguageClient_serverCommands = { 'haskell': ['hie-wrapper', '--lsp'] }
"let g:LanguageClient_serverCommands = { 'haskell': ['haskell-language-server-wrapper', '--lsp'] }
nnoremap :call LanguageClient_contextMenu()
" Or map each action separately
nnoremap K :call LanguageClient#textDocument_hover()
nnoremap gd :call LanguageClient#textDocument_definition()
nnoremap :call LanguageClient#textDocument_rename()

" Haskell syntax highlighting neovimhaskell/haskell-vim
"let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
"let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
"let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
"let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
"let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
"let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
"let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

