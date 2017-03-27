" C++ formating
let g:clang_format#command = "clang-format-3.8"
let g:clang_format#detect_style_file = 1
nmap <leader>f :ClangFormat<CR>

" C++ completion
let g:deoplete#sources#clang#libclang_path =
  \ '/usr/local/Cellar/llvm38/3.8.1/lib/llvm-3.8/lib/libclang.dylib'
let g:deoplete#sources#clang#clang_header =
  \ '/usr/local/Cellar/llvm38/3.8.1/lib/llvm-3.8/lib/clang'
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer']

" C++ highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 0
