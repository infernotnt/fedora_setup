"do ":so%" after changing the config file to reflect the changes(only works in this file) light or dark theme
set bg=dark

" make vim share the copy-paste clipboard with the system
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P

" Replace all globaly is aliased to R(R has a default bind which is unbound, you really need the default R, bind the replace to S)
nnoremap R :%s//g<left><left>

"------------------------------------------------------------------------------------------------------------
" TODO: set the leader key to " ", why?
let mapleader =  " "

" TODO,(msm da onaj tip u how to do 90% of what plugins do with just vim objasni ovo)
filetype plugin on
" Eh, ne moras al kao pogledaj tomm scott ili neki video za utf-8, al nepotrebno je
set encoding=utf-8
" Disable automatic commenting on new line
set formatoptions-=cro


" TODO: kad budem radio latex/markdown/cpp/c/python, staviti da se uvek kompajluje na isto dugme?

" TODO: vidi ovo, |luke smith|, syntax check za .sh fajlove, i da je sugestije(za .sh fajlove)
map <leader>s :!clear && spellcheck %<CR>

" potencijalno bolja opcija za copy paste iz ostatka sistema(luke smith, video: Copy and Paste to/from Vim from/to Other Programs!)
"vnoremap <C-c> "+y
"map <C-v> "+P
"------------------------------------------------------------------------------------------------------------

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

"idk, maybe put "set autoindent" insead of this??
set smartindent

syntax on

" (default on)
set ruler

set wildmode=longest,list,full


" something for having seperate .vimrc for every project(that has a .vimrc in
" it), usefull for having specific vim configs for each project
"set exrc

" make cursor a block even in insert mode(ERROR, does not work, and i probably don't want it to work)
"set guicursor

" enable relative lines
set relativenumber

" disables highlighting on every search(/)(PREFERENCE)
set hlsearch

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

" Plugin stuff
call plug#begin("~/.vim/plugged")
" apperently these are useful: telescope, treesitter, undotree, fugitive?(mozda nisam dobro cuo)
Plug 'gruvbox-community/gruvbox'
call plug#end()

" colorscheme
colorscheme gruvbox

" idk, i think it makes the background more like the usual terminal background(maby transparency too?)
"highlight normal guibg=none

" Automatically deletes all trailing whitespaces on save
autocmd BufWritePre * %s/\s\+$//e
