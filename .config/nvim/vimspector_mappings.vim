" Necessary additions for vimspector

" Winbar
nmap <Leader>vo :VimspectorShowOutput
nmap <Leader>vr :VimspectorReset

" Prompt Buffers
nmap <Leader>ve :VimspectorBalloonEval
nmap <Leader>vw :VimspectorWatch


" balloons
" for normal mode - the word under the cursor
nmap <Leader>vb <Plug>VimspectorBalloonEval
" for visual mode, the visually selected text
xmap <Leader>vb <Plug>VimspectorBalloonEval

