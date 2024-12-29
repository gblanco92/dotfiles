augroup tex
  " Treat long lines as break lines (useful when moving around in them)
  map <buffer> j gj
  map <buffer> k gk

  " Special motions for paragraphs
  map <buffer> 0 g^
  map <buffer> $ g$


  " Disable spell checking inside VSCode
  if !exists('g:vscode')
    " Enable spell checking
    setlocal spell

    " Complete using dictionary words
    setlocal complete+=kspell
  endif

  " Disable column limit marker
  setlocal colorcolumn=

  " Do not break words at the end of a line
  setlocal linebreak

  " Do not highlight the cursor line (better performance)
  setlocal nocursorline

  " Do not use relativenumber (better performance)
  setlocal norelativenumber

  " Do not use cursorcolumn (better performance)
  setlocal nocursorcolumn

  " Better performance when redrawing
  setlocal lazyredraw
augroup END
