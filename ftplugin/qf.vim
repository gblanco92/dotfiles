" Disable line highlighting
highlight! link QuickFixLine Normal

" Remove configs for quickfix windows
setlocal nonumber
setlocal colorcolumn=
" setlocal nocursorline

" Open quickfix automatically
autocmd! QuickFixCmdPost * botright copen

" Close quickfix automatically
autocmd! BufWinEnter quickfix nnoremap <silent> <buffer>
              \ q :cclose<cr>:lclose<cr>
  autocmd! BufEnter * if (winnr('$') == 1 && &buftype ==# 'quickfix' ) |
              \ bd | q | endif

" Readjust windows height (must bet the last autocmd!)
call AdjustWindowHeight(3, 10)
augroup END
