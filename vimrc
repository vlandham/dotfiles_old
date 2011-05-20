call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
set shiftwidth=2
set autoindent
set smartindent
set expandtab
set tabstop=2
set softtabstop=2
set nocompatible
set vb
set showmatch
filetype plugin indent on
syntax on
set incsearch
set hlsearch
set ignorecase
set smartcase
colorscheme twilight2
let ruby_space_errors = 1
map :nt :NERDTreeToggle


" Needed on some linux distros.
" see http://www.adamlowe.me/2009/12/vim-destroys-all-other-rails-editors.html
" filetype off 


