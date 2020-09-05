" --------------
" -- MAPPINGS --
" --------------

let mapleader = ","

" Disable arrow keys
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>

inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
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
" Automatically closing braces
inoremap {<CR> {<CR>}<Esc>ko<tab>
 " settings
" filetype indent on
" Tagbar activation
nmap <F8> :TagbarToggle<CR>

" Use tab for trigger completion with characters ahead and navigate.
	" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
	inoremap <silent><expr> <TAB>
		  \ pumvisible() ? "\<C-n>" :
		  \ <SID>check_back_space() ? "\<TAB>" :
		  \ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	" Used in the tab autocompletion for coc
	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	" Use <c-space> to trigger completion.
	inoremap <silent><expr> <c-space> coc#refresh()

	" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
	" Coc only does snippet and additional edit on confirm.
	inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

	" Use `[g` and `]g` to navigate diagnostics
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" Remap keys for gotos
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" Used to expand decorations in worksheets
	nmap <Leader>ws <Plug>(coc-metals-expand-decoration)

	" Use K to either doHover or show documentation in preview window
	nnoremap <silent> K :call <SID>show_documentation()<CR>

	nmap <leader>rn <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>g  <Plug>(coc-format-selected)
	nmap <leader>g  <Plug>(coc-format-selected)

	augroup mygroup
	  autocmd!
	  " Setup formatexpr specified filetype(s).
	  autocmd FileType scala setl formatexpr=CocAction('formatSelected')
	  " Update signature help on jump placeholder
	  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

	" Remap for do codeAction of current line
	xmap <leader>a  <Plug>(coc-codeaction-line)
	nmap <leader>a  <Plug>(coc-codeaction-line)

	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

	" Trigger for code actions
	" Make sure `"codeLens.enable": true` is set in your coc config
	nnoremap <leader>cl :<C-u>call CocActionAsync('codeLensAction')<CR>

	" Show all diagnostics
	nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
	" Manage extensions
	nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
	" Show commands
	nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
	" Find symbol of current document
	nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
	" Search workspace symbols
	nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
	" Do default action for next item.
	nnoremap <silent> <space>j  :<C-u>CocNext<CR>
	" Do default action for previous item.
	nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
	" Resume latest coc list
	nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

	" Notify coc.nvim that <enter> has been pressed.
	" Currently used for the formatOnType feature.
	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
		  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	" Toggle panel with Tree Views
	nnoremap <silent> <space>t :<C-u>CocCommand metals.tvp<CR>
	" Toggle Tree View 'metalsPackages'
	nnoremap <silent> <space>tp :<C-u>CocCommand metals.tvp metalsPackages<CR>
	" Toggle Tree View 'metalsCompile'
	nnoremap <silent> <space>tc :<C-u>CocCommand metals.tvp metalsCompile<CR>
	" Toggle Tree View 'metalsBuild'
	nnoremap <silent> <space>tb :<C-u>CocCommand metals.tvp metalsBuild<CR>
	" Reveal current current class (trait or object) in Tree View 'metalsPackages'
	nnoremap <silent> <space>tf :<C-u>CocCommand metals.revealInTreeView metalsPackages<CR>


" C++ make
nnoremap <F4> :make!<cr>

