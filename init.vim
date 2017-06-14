"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bootstrap vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  exe '!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" Plug section
call plug#begin('~/.config/nvim/plugged')
" C/C++
  Plug 'rhysd/vim-clang-format', {'for' : ['c', 'cpp']} " Formatting
  Plug 'Shougo/deoplete.nvim', {'for' : ['c', 'cpp']} " Completing
  Plug 'zchee/deoplete-clang', {'for' : ['c', 'cpp']} " Completing
  Plug 'ervandew/supertab', {'for' : ['c', 'cpp']} " Completing
  Plug 'Shougo/neoinclude.vim', {'for' : ['c', 'cpp']} " Includes
  Plug 'octol/vim-cpp-enhanced-highlight', {'for' : ['c', 'cpp']} " Highlighting
" Searching
  Plug 'ctrlpvim/ctrlp.vim'
" Tmux
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'edkolev/tmuxline.vim'
" Themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'iCyMind/NeoSolarized'
  Plug 'morhetz/gruvbox'
"" Maths
  Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for' : 'tex' }
  Plug 'brennier/quicktex', { 'for' : 'tex' }
  Plug '~/.config/nvim/plugged/m2-syntax'
  Plug '~/.config/nvim/plugged/vim-magma'
"" Other
  Plug 'luochen1990/rainbow' " Rainbow parenthesis
  Plug 'kshenoy/vim-signature' " Display marks
  Plug 'tpope/vim-surround' " Surround objects
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
filetype indent off

" Show commands
if !has('nvim')
  set showcmd
endif

" Set to auto read when a file is changed from the outised
if !has('nvim')
  set autoread
endif

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<CR>

" Recognize :W as :w
command! -bar -nargs=* -complete=file -range=% -bang W
  \ <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Write
  \ <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Wq
  \ <line1>,<line2>wq<bang> <args>
command! -bang Q
  \ quit<bang>

" Use system clipboard instead of vim buffers
set clipboard=unnamed
if has("unnamedplus")
  set clipboard+=unnamedplus
endif

" No swap files
set noswapfile

" Persistent undo across different vim runs
if !empty($TMPDIR)
  set undofile
  set undodir=$TMPDIR
endif

" Disable bell
if !has('nvim')
  set belloff="all"
endif

" Make dot work over visual line selections
xnoremap . :norm.<CR>

" Autoread when file is changed
if !has('nvim')
  set autoread
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=7

" Ignore files
set wildignore+=*.a,*.o,*.out,*.so,*.exe,*.dll
set wildignore+=*~,*.bak,*.pyc,*.swp,*.tmp,.DS_Store
set wildignore+=*.zip,*.tar,*.gz,*.rar,*.bzip,*.7z
set wildignore+=*.git,*.svn,*.hg,*.pdf,*.ps
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png
set wildignore+=*.bbl,*.aux,*.fls,*.log,*.brf,*.toc,*.fdb_latexmk,*.sig

"Always show current position
if !has('nvim')
  set ruler
endif

" A buffer becomes hidden when it is abandoned
set hidden

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

"Line number formats
set relativenumber
set number

" Highlight current line
set cursorline

" Highlight column 81
set colorcolumn=80

" Always show the status line
if !has('nvim')
  set laststatus=2
endif

" Graphical menu when completing commands
if !has('nvim')
  set wildmenu
endif

" Automatically equalize splits when Vim is resized
autocmd VimResized * wincmd =

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Usefull remapings for non-US keyboards
map + ]
map ` [

" Set region to US English
set spelllang=en_us

" Use always the same spellfile
set spellfile=~/.config/nvim/spell/en.utf-8.add

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors, Fonts and Encodings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax on

" Use truecolors
if has('gui_running') || has('nvim')
  set termguicolors
endif

try
  colorscheme NeoSolarized
  "colorscheme gruvbox
catch
  colorscheme desert
endtry

if has('gui_running')
  set background=light
  let g:neosolarized_contrast = "high"
else
  set background=dark
endif

"Better line number on Solarized
hi CursorLineNr guifg=DarkGrey

if has('gui_running')
  set guifont=Inconsolata\ for\ Powerline:h16
  set guioptions=
  set gcr=n:blinkon0
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spaces, tabs and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
if !has('nvim')
  set smarttab
endif

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Autoindent
if !has('nvim')
  set autoindent
endif

" Highlight spaces & tabs
set lcs=trail:·,tab:»·
set list

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap 0 to first non-blank character & $ to last non-blank character
map 0 ^
map $ g_

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" Specify the behavior when switching between buffers using a quickfix windows
set switchbuf=useopen

" Switch buffer using <leader> + <Tab>
map <silent> <leader><Tab> :bn<CR>

" Return to last edit position when opening files
autocmd! BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
  \ | exe "normal! g`\"" | endif

" Disable arrows (all modes)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Don't use the mouse
set mouse=c

"Don't move to the beginning of line when switching buffers
set nostartofline

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custom functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save.
function! DeleteTrailingWS()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfunction
autocmd! BufWrite * :call DeleteTrailingWS()

" Blink on search
function! HLNext (blinktime)
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    let target_pat = '\c\%#\%('.@/.'\)'
    let ring = matchadd('ColorColumn', target_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 1000) . 'm'
    call matchdelete(ring)
    redraw
endfunction

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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" But respect case when in completions
set infercase

" When searching try to be smart about cases
set smartcase

" Search in for directories in path recursively
set path+=**

" Default suffixes when searching files using vim
set suffixesadd=.c,.cpp,.cc,.h,.hpp,.hh,.vim,.tex,.py,.sh,.m,.m2

" Highlight search results
if !has('nvim')
  set hlsearch
  set incsearch
endif

" This rewires n and N to do the highlighing...
nnoremap <silent> n  n:call HLNext(0.2)<cr>
nnoremap <silent> N  N:call HLNext(0.2)<cr>

" Disable highlight
nnoremap <silent> <ESC> :noh <ESC>

" For regular expressions turn magic on
set magic

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <C-space> ?

" Add g by default in all replacements
set gdefault

" Search & replace the word under the cursor
map <leader>r :%s/<C-r><C-w>/

" Remap cope to cc. (See :help cope)
map <leader>cc :botright cope<CR>
map <leader>n :cn<CR>
map <leader>p :cp<CR>

" If available, use ag over grep
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor\ -m\ 50
endif

" K searches for the word unfer the cursor (:bo for quickfix across windows)
nnoremap <silent> K :grep! --word-regexp "<C-R><C-W>"<CR>:bo cwindow<CR>

" Create the Ag command
command! -nargs=+ -complete=file -bar
  \ Ag silent! grep! <args> | bo cwindow | redraw!

" Map <leader><Space> to :Ag<Space>
nnoremap <leader><Space> :Ag<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin configuration
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
set noshowmode
" If airline does not show properly on tmux/nvim or MacVim the problem is
" probably on the font not begin Powerline (or Powerline enough). Currently
" using:  Inconsolata-dz for Powerline:14h for iTerm2 &
"         Inconsolata for Powerline:h16 for MacVim.

" Rainbown parenthesis
let g:rainbow_active = 1
let g:rainbow_conf = { 'ctermfgs' : ['brown'],
\                      'guifgs' : ['SaddleBrown'] }

" Ctrl-P
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_ignore = ['.git',
  \ 'cd %s && git ls-files -co --exclude-standard']

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
      source ~/.config/nvim/plugged/LaTeX-Box/ftplugin/tex_LatexBox.vim
      "call plug#load("LaTeX-Box")

      let g:LatexBox_ignore_warnings = []
    elseif l:is_draft == 0 && b:LatexBox_is_draft != 0
      let b:LatexBox_is_draft = 0

      unlet b:LatexBox_loaded
      source ~/.config/nvim/plugged/LaTeX-Box/ftplugin/tex_LatexBox.vim
      "call plug#load("LaTeX-Box")
    endif

    call winrestview(l:save)
  endif
endfunction
