"TODO: kad budes pravio finalni .vimrc, podeliti na 3 sekcije (sve je komentirano sem prve sekcije, i mozdaaaa malog dela druge, mada onda vec mozes staviti u prvu mozda?):
"1., korisna sigurno, ova se koristi (think george hotz .vimrc?(https://github.com/littlemountainman/geohot-terminal)
"2., stvari koje ne moram bas da koristim, ali korisne su ponekad, samo ne treba bas da mi stoje ukljucene jer krse vim filozofiju ili tako nesto (think: misem da mozes da pomeras gde ces biti, better tabbing...)
"3., stvari koje jos ne znam sta rade, ali ce mi mozda biti korisno jednog dana (think: window navigation)

"TODO: negde izspamuj kako je "." najjaca komanda u vimu
"do ":so%" after changing the config file to reflect the changes(only works in this file) light or dark theme
"TODO:, staviti sve ove komentare u isti red kao i samu komandu
set background=dark

" TODO, mozda staviti onako da ti se vidi linija, ali ne skroz, neko samo linija dole msm(ali ovo kao krsi george hotz minimalizam?)

" make vim share the copy-paste clipboard with the system
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P

" Replace all globaly is aliased to S (S = substitute)
nnoremap S :%s//g<left><left>

"------------------------------------------------------------------------------------------------------------
" ovaj section je iz (tip stvarno preteruje sa svime): https://www.youtube.com/watch?v=gZCXaF-Lmco
" Makes popup menu smaller
"set pumheight=10

" Enables chaning your cursor position with mouse (only use if you're a virigin)
"set mouse=a

" Enables the graphical line on your current line
"set cursorline

" Treat dash seperated wods as a word text object
set iskeyword+=-

" TODO, idk
"set t_Co=256

" So THAT I can see `` in markdown files (TODO: isprobati sa razlicitim levelima, mozda ce auto formatirati kad editujem da vec bude formatirano???)
"set conceallevel=0

" Makes tabbing smarted and realizes you have 2 vs 4
" TODO:
"set smarttab

" Always display the status line (TODO: idk irl)
"set laststatus=0

" TODO: idk irl (Always show tabs)
"set showtabline=2

 "TODO: idk, recommended by coc
"set nobackup
 "TODO: idk, recommended by coc
"set nowritebackup

" TODO
" faster completion
"set updatetime=300

" TODO
" By default timeoutlen is 1000ms
"set timeoutlen=100

" TODO
" We don't need to see things like --INSER-- anymore
"set noshowmode

"remapings section:

" Easy CAPS (Ctrl+u)
inoremap <C-u> <ESC>viwU
nnoremap <C-u> viwU<Esc>


" idk, i ne moram da znam vrv, dodati u neku 3. kategoriju gde stoje stvari koje ne znam sta su i jednog dana mi mozda dodju korisne
" Tab in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" Shift-tab will go back
nnoremap <S-TAB> :bprevious<CR>

" TOD:idk
" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing (when you tab a selection, it does not deselect after 1 tab)
" Pussy? Moze samo "." da se ponovi komanda
"vnoremap < <gv
"vnoremap > >gv

" Better window navigation
" TODO, idk, kad budem koristio window navigation mogu ovo da razmotrim
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

"------------------------------------------------------------------------------------------------------------

"------------------------------------------------------------------------------------------------------------
" TODO: set the leader key to " ", why?
let mapleader =  " "

" TODO,(msm da onaj tip u how to do 90% of what plugins do with just vim objasni ovo)
filetype plugin on

" TODO: koji je koji
" Eh, ne moras al kao pogledaj tomm scott ili neki video za utf-8, al nepotrebno je
set encoding=utf-8
set fileencoding=utf-8

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

"idk, maybe put "set autoindent" insead of this?? (george hotz uses autoindent(=ai))
set smartindent

" bolje nego syntax on(ukloni ovaj komentar)
syntax enable

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
