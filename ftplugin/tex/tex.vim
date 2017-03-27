" Treat long lines as break lines (useful when moving around in them)
map <buffer> j gj
map <buffer> k gk

" Special motions for paragraphs
map <buffer> 0 g^
map <buffer> $ g$

" Enable spell checking
setlocal spell

" Disable column limit marker
setlocal colorcolumn=

" Do not break words at the end of a line
setlocal linebreak

" Do not highlight the cursor line
setlocal nocursorline

" LaTeX-Box
let g:LatexBox_viewer = "/Applications/Skim.app/Contents/MacOS/Skim"
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
let g:LatexBox_ignore_warnings = []
nmap <silent> <leader>c :w<CR>:call ChangeTexDraftState()<CR>:Latexmk<CR>
nmap <silent> <leader>v :w<CR>:LatexView<CR>
map <silent> <Leader>s :w<CR>:silent
                \ !/Applications/Skim.app/Contents/SharedSupport/displayline -g
                \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
                \ "%:p" <CR>
" When reinstalling Skim set: "defaults write -app Skim SKAutoReloadFileUpdate
" -boolean true" to avoid pop-up on PDF reloading.

" Detects whether the a LaTeX file is in draft mode or not. Changes
" configuration variables accordingly
let b:LatexBox_is_draft = 0
function! ChangeTexDraftState()
  if expand('%:p') == LatexBox_GetMainTexFile()
    let l:save = winsaveview()

    exec cursor(1, 1)
    while getline(search("documentclass")) =~ '\(^\s*\)\@<=%'
      " pass
    endwhile

    let l:is_draft = search("draft", 'n', line('.'))

    if l:is_draft != 0 && b:LatexBox_is_draft == 0
      let b:LatexBox_is_draft = 1
      let g:LatexBox_ignore_warnings =
        \ ['Overfull', 'Underfull', 'draft',
        \ 'undefined on input line', 'undefined references']

      unlet b:LatexBox_loaded
      call plug#load("LaTeX-Box")

      let g:LatexBox_ignore_warnings = []
    elseif l:is_draft == 0 && b:LatexBox_is_draft != 0
      let b:LatexBox_is_draft = 0

      unlet b:LatexBox_loaded
      call plug#load("LaTeX-Box")
    endif

    call winrestview(l:save)
  endif
endfunction
