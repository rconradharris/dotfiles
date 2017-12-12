""" dotfile @ ~/.vimrc
set rtp+=/usr/local/go/misc/vim

filetype plugin indent on

""" Turn off vi-compat mode
set nocompatible

""" Turn on coloring
syntax on 

""" Desert omits a dark blue so is nice for darkbg 
colorscheme desert

set visualbell

""" Scripting language defaults
set expandtab
set textwidth=78
set wrap

""" Python Convention
set shiftwidth=4
set tabstop=4

""" Guess indentation level (when pasting text use :set pastemode)
set autoindent
set smartindent

""" Highlight the tokens that match the search
set hlsearch

""" Start searching after each typed character
set incsearch

""" Ignore the case of the search term when all lowercase
set ignorecase
set smartcase

""" Always maintain at least two lines of context around working-line
set scrolloff=2

""" Present a menu of matching files when using wildcard completion
set wildmenu
set wildmode=list:longest,full
set wildignore=*.pyc

""" Match brackets
set showmatch

""" Show line and column numbers
set ruler

""" When deleting a softtab, delete a shiftwidth number of spaces
set smarttab

""" Reload/edit vimrc easily
map ,rv :so ~/.vimrc<CR>
map ,ev :new ~/.vimrc<CR>

""" git-diff current file
map ,gd :!git diff %<CR>
map ,gdd :!git diff<CR>
map ,gb :!git blame %<CR>

""" ctags
map ,bt :!ctags -o .tags -R .<CR>
set tags=.tags

""" STANDUP Notes
nmap ,st :new ~/Documents/work/STANDUP<CR>
nmap ,dt :r! date +"\%Y-\%m-\%d"<CR>$"="\nPENDING\n\n\n\nBLOCKED\n\n\n\nDONE\n\n"<CR>pjjj"="- "<CR>pA

""" Remove toolbar in MacVim
set go-=T

""" Remove scrollbar in MacVim
set go-=r

""" For when ESC isn't present, like on iPad Pro keyboard
inoremap jj <Esc>
cnoremap jj <C-c>

""" Disable backups and swap file. Mostly working in a git tree anyway.
set nobackup
set noswapfile

"""Spell checking
nmap ,sp :setlocal spell spelllang=en_us<CR>
nmap ,nsp :setlocal nospell<CR>
