"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable filetype plugins
filetype plugin on
"filetype indent on

" Show commands
set showcmd

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
command! -bar -nargs=* -complete=file -range=% -bang W         <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Write     <line1>,<line2>write<bang> <args>
command! -bar -nargs=* -complete=file -range=% -bang Wq        <line1>,<line2>wq<bang> <args>

" Use system clipboard instead of vim buffers
set clipboard=unnamed
if has("unnamedplus")
  set clipboard+=unnamedplus
endif

" No swap files
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Bootstrap vim-plug
if empty(glob("~/.config/nvim/autoload/plug.vim"))
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
  Plug 'scrooloose/nerdtree'
" Tmux
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'edkolev/tmuxline.vim'
" Themes
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'iCyMind/NeoSolarized'
  Plug 'morhetz/gruvbox'
" Maths
  Plug 'LaTeX-Box-Team/LaTeX-Box', { 'for' : 'tex' }
  Plug '~/.vim/plugged/vim-magma'
  Plug '~/.vim/plugged/m2-syntax'
" Other
  Plug 'luochen1990/rainbow' " Rainbow parenthesis
  Plug 'blueyed/vim-diminactive' " Mark active split
  Plug 'kshenoy/vim-signature' " Display marks
  Plug 'tpope/vim-surround' " Surround objects
call plug#end()

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
set wildignore+=*.bbl,*.aux,*.fls,*.log,*.brf,*.toc

"Always show current position
set ruler

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
set colorcolumn=81

" Always show the status line
if !has('nvim')
  set laststatus=2
endif

" Graphical menu when completing commands
if !has('nvim')
  set wildmenu
endif

" Change cursor shape in insert mode
if has('nvim')
  let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Usefull remapings for non-US keyboards
nmap +s ]s
nmap `s [s

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
" => Text, tab and indent related
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

" Close the current buffer
map <leader>bd :Bclose<CR>

" Close all the buffers
map <leader>ba :1,1000 bd!<CR>

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<CR>:pwd<CR>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Switch buffer using <leader> + <Tab>
map <silent> <leader><Tab> :bn<CR>

" Return to last edit position when opening files
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Disable arrows (all modes)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Don't use the mouse
set mouse=c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save.
func! DeleteTrailingWS()
  let l:save = winsaveview()
  %s/\s\+$//e
  call winrestview(l:save)
endfunc
autocmd BufWrite * :call DeleteTrailingWS()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
if !has('nvim')
  set hlsearch
  set incsearch
endif

" This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.2)<cr>
nnoremap <silent> N   N:call HLNext(0.2)<cr>

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

" K searches for the word unfer the cursor
nnoremap <silent> K :grep! --word-regexp "<C-R><C-W>"<CR>:cwindow<CR>

" Create the Ag command
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

" Map <leader><Space> to :Ag<Space>
nnoremap <leader><Space> :Ag<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tex(t) files options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup TexFiles
  " Treat long lines as break lines (useful when moving around in them)
  autocmd FileType tex,text,markdown map <buffer> j gj
  autocmd FileType tex,text,markdown map <buffer> k gk

  " Special motions for paragraphs
  autocmd Filetype tex,text,markdown map <buffer> 0 g^
  autocmd Filetype tex,text,markdown map <buffer> $ g$

  " Enable spell checking
  autocmd FileType tex,text,markdown setlocal spell

  " Disable column limit marker
  autocmd FileType tex,text,markdown setlocal colorcolumn=""

  " Do not break words at the end of a line
  autocmd FileType tex,text,markdown setlocal linebreak

  " Do not highlight the cursor line
  autocmd FileType tex,text,markdown setlocal nocursorline
augroup END

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
\                       'guifgs' : ['SaddleBrown'] }

" Ctrl-P
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_user_command = 'find %s -type f'
let g:ctrlp_user_ignore = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" C++ formating
let g:clang_format#command = "clang-format-3.8"
let g:clang_format#detect_style_file = 1
nmap <leader>f :ClangFormat<CR>

" C++ completion
let g:deoplete#sources#clang#libclang_path = '/usr/local/Cellar/llvm38/3.8.1/lib/llvm-3.8/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header = '/usr/local/Cellar/llvm38/3.8.1/lib/llvm-3.8/lib/clang'
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']

" C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 0

" Latex-Box
let g:LatexBox_viewer = "/Applications/Skim.app/Contents/MacOS/Skim"
let g:LatexBox_quickfix = 2
let g:LatexBox_latexmk_options = "-pdflatex='pdflatex -synctex=1 \%O \%S'"
nmap <leader>c :w<CR>:Latexmk<CR>
nmap <leader>v :w<CR>:LatexView<CR>
map <silent> <Leader>s :w<CR>:silent
                \ !/Applications/Skim.app/Contents/SharedSupport/displayline -g
                \ <C-R>=line('.')<CR> "<C-R>=LatexBox_GetOutputFile()<CR>"
                \ "%:p" <CR>
" When reinstalling Skim set: "defaults write -app Skim SKAutoReloadFileUpdate
" -boolean true" to avoid pop-up on PDF reloading.
