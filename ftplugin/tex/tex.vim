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
