" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim
 
syntax on
" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark
 
" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif
 
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd    " Show (partial) command in status line.
"set showmatch    " Show matching brackets.
set ignorecase   " Do case insensitive matching
"set smartcase    " Do smart case matching
"set autowrite    " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)
 
" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
 
"anagp
 
"Set the highlight all searches as default
set hlsearch
 
"Incremental search as the term is entered
set incsearch

"shows line number
set nu

"sets the tab as spaces and the length
set expandtab
set tabstop=2
