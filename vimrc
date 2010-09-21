set nocompatible

" Auto and smart indenting.
set autoindent
set smartindent

" Use 4 space 'tabs'
set tabstop=4
set shiftwidth=4
set expandtab

" Show matching braces
set showmatch

" Remove annoying beeps and flash screen
set vb t_vb=

" Incremental search
set incsearch

" Use doxygen syntax when appropriate
let mysyntaxfile='$HOME/.vim/doxygen_load.vim'

" Syntax
:syntax on

" Set line numbers to show: I'm not sure I like this one.
:set number

" Wordwrap
set textwidth=80

" Show ruler (cursor position)
set ruler

" FTplugin for man files
:runtime! ftplugin/man.vim
" highlight all searches
:set hlsearch

" COlorsceme
:colorscheme desert

" Markdown syntax
 augroup mkd
  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
 augroup END

 " Speed up response to ESC key
 set notimeout
 set ttimeout
 set timeoutlen=100


