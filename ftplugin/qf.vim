" Adjust QuickFix window height
function! AdjustWindowHeight(minheight, maxheight)
  let l = 1
  let n_lines = 0
  let w_width = winwidth(0)
  while l <= line('$')
    " number to float for division
    let l_len = strlen(getline(l)) + 0.0
    let line_width = l_len/w_width
    let n_lines += float2nr(ceil(line_width))
    let l += 1
  endw
  exe max([min([n_lines, a:maxheight]), a:minheight]) . "wincmd _"
endfunction

augroup qf
  " Remove quickfix windows from listed buffers
  autocmd FileType qf set nobuflisted

  " Close quickfix if it is the last windows
  autocmd WinEnter *
    \ if winnr('$') == 1 &&
    \   getbufvar(winbufnr(winnr()), "&buftype") == "quickfix" | bd |
    \ endif

  " Disable QuickFixLine highlight group
  highlight QuickFixLine ctermbg=NONE guibg=NONE

  " Remove configs for quickfix windows
  setlocal nonumber
  setlocal colorcolumn=

  " Readjust windows height (must bet the last autocmd!)
  call AdjustWindowHeight(3, 10)
augroup END
