" set the tab length in spaces
set tabstop=10 softtabstop=10
" auto indentation on new line
set shiftwidth=5

" makes new tabs in insert mode become spaces
"set expandtab

" probably something similar to shiftwidth, I have no idea
" TODO: ovde pogledaj nesto za tabs vs spaces jer mi se cini da u insert modu
" automatski pretvara tabove u space-ove, i mozda autoindentation isto pravi
" space-ove umesto tabova

set smartindent

" something for having seperate .vimrc for every project(that has a .vimrc in
" it), usefull for having specific vim configs for each project
"set exrc

" make cursor a block even in insert mode(ERROR, does not work, and i probably don't want it to work)
"set guicursor

" enable relative lines
set relativenumber

" disables highlighting on every search(/)(PREFERENCE)
set nohlsearch

" idk, something for saving buffers
set hidden

" idk, something about disabling error flashes/bells?
set noerrorbells

" makes is so you see your current line number if you're using relative line numbers
set nu

" makes is so when you run out of screen space, the text doesnt wrap to a new line
set nowrap

" idk, something for history, useful for undotree(the last 2)(TODO, pogledaj sve ovo neki drugi dan)
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile


" highlights as you search(work even with nohlsearch)
set incsearch

" TODO
set termguicolors

" when you scroll up/down, it makes your screen move before your cursor hits the last/first line
set scrolloff=8


" TODO
set noshowmode
set completeopt=menuone,noinsert,noselect


" vertical line on the right
"set colorcolumn=80

" idk, usefull for some stuff i dont know about, useful for git integration
set signcolumn=yes

" idk, TODO, Give more space for displaying messages
set cmdheight=2

" idk, TODO, Having longer updatetime(default is 4000ms = 4s) leads to more noticiable delays and poor user experience.
set updatetime=50

" idk, TODO, don't pass messages to |ins-completion-menu|
set shortmess+=c

" END OF SECTION---------------------------------------------

" plugin stuff
call plug#begin("~/.vim/plugged")
" TODO
Plug 'nvim-telescope/telescope.nvim'

"apperently these are useful: telescope, treesitter, undotree, fugitive?(mozda nisam dobro cuo)
Plug 'gruvbox-community/gruvbox'
call plug#end()

" colorscheme
colorscheme gruvbox

highlight normal guibg=none
