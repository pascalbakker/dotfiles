" --------------
" -- MAPPINGS --
" --------------
inoremap jj <Esc>
let mapleader = ","

nnoremap W :w <cr>
nnoremap X :xa <cr>

" Disable arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" FileType specific mappings
autocmd FileType java map <buffer> <F4> :!mvn compile <cr>
" C++ make
nnoremap <F4> :make!<cr>

" Scala sbt make


" Latex make
map I :! pdflatex %<CR><CR>
map S :! mupdf $(echo % \| sed 's/tex$/pdf/') & disown<CR><CR>

" remap terminal exit
tnoremap <Esc> <C-\><C-n>

" resize
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" ===============
" PLUGIN MAPPINGS
" ===============

" NERDtree hotkey
		map <silent> <C-z> :NERDTreeToggle<CR>
" FZF hotkey (next to nerdtree)
nnoremap <C-x> : <C-u>FZF<CR>
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
" Check file in shellcheck
"		map <leader>s :!clear && shellcheck %<CR>
" Copy and Paste from vim to system clipboard (need gvim installed)
		vnoremap <C-c> "+y
		map <C-P> "+P

" szw/vim-maximizer
" Maximizers current window. run again to bring back other panes
map <C-f> :MaximizerToggle

" Other mappings can be found in the following files
" coc_mappings.vim
" vimspector.vim
