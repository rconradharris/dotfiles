set rtp+=/usr/local/go/misc/vim

filetype plugin indent on

""" Turn off vi-compat mode
set nocompatible

""" Turn on coloring
syntax on 

""" Desert omits a dark blue so is nice for darkbg 
colorscheme desert

""" When deleting a softtab, delete a shiftwidth number of spaces
set smarttab

set visualbell

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

""" Reload/edit vimrc easily
map ,rv :so ~/.vimrc<CR>
map ,ev :new ~/.vimrc<CR>

""" git-diff current file
map ,gd :!git diff %<CR>
map ,gdd :!git diff<CR>
map ,gb :!git blame %<CR>

""" ctags
map ,bt :!/usr/local/bin/ctags --exclude=.git -f .tags -R .<CR>
map ,gt :!gotags -f .tags -R .<CR>
set tags=.tags

""" STANDUP Notes
nmap ,id :new ~/Documents/code/Notes/IDEAS<CR>
nmap ,st :new ~/Documents/code/Notes/STANDUP<CR>
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

"""Standard whitespace handling
set expandtab
set ts=4
set sw=4

""" Per-language settings
autocmd FileType yaml setlocal ts=2 sw=2
autocmd FileType json setlocal ts=2 sw=2
autocmd FileType css setlocal ts=2 sw=2
autocmd FileType html setlocal ts=2 sw=2
autocmd FileType htmldjango setlocal ts=2 sw=2
autocmd FileType python setlocal tw=120 ts=4 sw=4 wrap autoindent smartindent
autocmd FileType go setlocal noexpandtab autoindent smartindent


""" Get-Things-Done Flow
inoremap ,,chk ✅ 
nnoremap ,,chk i✅<Esc>

inoremap ,,wip 🛠️ 
nnoremap ,,wip i🛠️<Esc>

inoremap ,,blk ⛔ 
nnoremap ,,blk i⛔<Esc>
