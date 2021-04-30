" Do ":so%" after changing the config file to reflect the changes(only works in this file) light or dark theme

" For help about any nvim command (anything from this file) do: ':h <command>'

"TODO za slecee urdejivanje: gledaj koje komande gde da stavis u koju kategoriju
"TODO: kad budes pravio finalni .vimrc, podeliti na 3 sekcije (sve je komentirano sem prve sekcije, i mozdaaaa malog dela druge, mada onda vec mozes staviti u prvu mozda?):
"1., korisna sigurno, ova se koristi (think george hotz .vimrc?(https://github.com/littlemountainman/geohot-terminal)
"2., stvari koje ne moram bas da koristim, ali korisne su ponekad, samo ne treba bas da mi stoje ukljucene jer krse vim filozofiju ili tako nesto (think: misem da mozes da pomeras gde ces biti, better tabbing...)
"3., stvari koje jos ne znam sta rade, ali ce mi mozda biti korisno jednog dana (think: window navigation)

"Vim note taking------------------------------------------------------------------------------------------------------------


"================================================================================================================================================


"------------------------------------------------------------------------------------------------------------

"TODO: smanjiti malkice onaj waste-ovan space ispod kucanja editor komande, msm da sam imao setting koji to radi ili ga idalje imam negde

"TEST---------

" Always display the status line (TODO: idk irl)
set laststatus=2

"TEST---------

" TODO, does not work: Y    -treba da kopira od kursora do kraja reda, a on kopira ceo red, kao da sam uradio yy umesto Y
" essential (geohot) shit: ----------------------------------------------------------------------------
set background=dark


" Copy/paste from and to system with Ctrl-c and Ctrl-p . Potentially better than sharing the vim copy/paste clipboard with the system. This will only put it to the system clipboard if you do Ctr+c (in visual mode) and Ctrl+p(any mode). If using this, disable the line "set clipboard=unnamedplus". (the system clipboard is in the "+ register)
"vnoremap <C-c> "+y
"noremap <C-v> "+P

" Enables syntax highlighting
syntax enable

set tabstop=10

set expandtab

" Set the leader key to " " (space)
let mapleader =  " "

" Enables auto indentation. Indents the next line like the current one.
set autoindent

" vidi da li je essential, grupisati sa: set tabstop=
set softtabstop=10

" todo?
filetype plugin on

" Enables highlighting when searching with "/", to disable do // or ":nohl"
set hlsearch

" Enable relative lines
set relativenumber

" Makes your current line show the actual line number in the file (used for "set relativenumber")
set number

" Highlights as you search
set incsearch


" F6 compiles currently open file based on file type
" Compile markdown (.md) files to the pdf equivalent
autocmd FileType markdown nnoremap <f6> <esc>:w<enter> :silent !pandoc %:p -o %:p:r.pdf &<enter>
" Compile C++ code (TODO: open resulting program in new window or something like that?)
autocmd FileType cpp nnoremap <f6> <esc>:w<enter>:!g++ -std=c++17 %:p -o %:p:r<enter>



" Automatically deletes all trailing whitespaces on file save
autocmd BufWritePre * %s/\s\+$//e

" Spell check (o for ortography??), staviti mozda da detektuje na kojoj sam tastaturi i da taj jezik checkuje?
nnoremap <leader>o :setlocal spell! spelllang=en_us<CR>


" Enables autocompletion for file names
set path+=**

" Autocomplete commands, files, everything. Ctrl+n(n=next), Ctrl+p(p=previous)
set wildmode=longest,list,full

" ----- Optional - SECTION: ------------------------------------------------------------------------------

" Enables changing your cursor position with mouse (you should use this very rarely)
" Makes vim share the copy paste clipboard with the system

set clipboard=unnamedplus
set mouse=a


"highlight Cursorline cterm=bold

" Enables transparency. Makes your background be like the usual
"highlight normal guibg=none

" Makes is so when you run out of screen space, the text doesn't wrap to a new line
set nowrap

" When you scroll up/down, it makes your screen move before your cursor hits the last/first line
"set scrolloff=8

set smartindent " Idk, some say you should use, some say you shouldn't

" Sets the process title to something related to the file name
set title

" Enables the graphical line on your current line
"set cursorline

" Replace all globally is aliased to S (S = substitute)
nnoremap S :%s//g<left><left>

" Press "//" after searching to unhighlight
nnoremap // :noh<return>

" ------ Set by default, but it's here just in case - SECTION:-----------------------------------------------

set ruler " (default on)

" (default: on) Show (partial) command in the last line of the screen.  Set this option off if your terminal is slow.
set showcmd

set noerrorbells " (default: off) Disables error bells and flashes

" Probably useless - SECTION: - -------------------------------

nnoremap \ :te<enter> " Enables a terminal (you already have a window manager and shortcuts, just use those)

" Enable paste mode (disables indentation, pastes everything literally)
"set pastetoggle=<F2>

"set lazyredraw " Redraws the screen when it needs to, usefull when using long macros, or on slow pc-s

" Makes backspace behave normally
set backspace=indent,eol,start
"TODO:, staviti sve ove komentare u isti red kao i samu komandu


"------------------------------------------------------------------------------------------------------------
" ovaj section je iz (tip stvarno preteruje sa svime): https://www.youtube.com/watch?v=gZCXaF-Lmco
" Makes popup menu smaller
"set pumheight=10

" So THAT I can see `` in markdown files (TODO: isprobati sa razlicitim levelima, mozda ce auto formatirati kad editujem da vec bude formatirano???)
"set conceallevel=0

" Makes tabbing smarted and realizes you have 2 vs 4
" TODO:
"set smarttab


" TODO: idk irl (Always show tabs)
"set showtabline=2

"TODO: idk, recommended by coc
"set nobackup
"TODO: idk, recommended by coc
"set nowritebackup

" TODO
set noshowmode " We don't need to see things like --INSER-- anymore (TODO, disable make it acutally show the mode)

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

" TODO: spellcheck, luke smith ima solidan, mozes i jezik da biras

"------------------------------------------------------------------------------------------------------------


" TODO: koji je koji
" Eh, ne moras al kao pogledaj tomm scott ili neki video za utf-8, al nepotrebno je
set encoding=utf-8
set fileencoding=utf-8

set formatoptions-=cro " TODO: ne radi| Disable automatic commenting on new line


" TODO: kad budem radio latex/markdown/cpp/c/python, staviti da se uvek kompajluje na isto dugme?

" TODO: vidi ovo, |luke smith|, syntax check za .sh fajlove, i da je sugestije(za .sh fajlove)
map <leader>s :!clear && shellcheck -x %<CR>

"------------------------------------------------------------------------------------------------------------

" set the tab length in spaces
" auto indentation on new line
set shiftwidth=5

" makes new tabs in insert mode become spaces
"set expandtab

" probably something similar to shiftwidth, I have no idea
" TODO: ovde pogledaj nesto za tabs vs spaces jer mi se cini da u insert modu
" automatski pretvara tabove u space-ove, i mozda autoindentation isto pravi
" space-ove umesto tabova

" something for having seperate .vimrc for every project(that has a .vimrc in
" it), usefull for having specific vim configs for each project
"set exrc

" Some form of this is command is probably used for making it so your cursor is different on insert mode (default: on)
"set guicursor

" idk, something for saving buffers
set hidden

" idk, something for history, useful for undotree(the last 2)(TODO, pogledaj sve ovo neki drugi dan)
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile



" TODO
set termguicolors


" TODO
set noshowmode
set completeopt=menuone,noinsert,noselect

" vertical line on the right
"set colorcolumn=80

" idk, the bar on the left of line numbers, useful for git integration apparently
"set signcolumn=yes

" idk, apparently not worth it, gives more space for displaying messages, but takes away from working space (the thing on the bottom of the screen)
"set cmdheight=2

" Idk, TODO, Having longer updatetime(default is 4000ms = 4s) leads to more noticiable delays and poor user experience.
"set updatetime=50

" Idk, likely useless
"set shortmess+=c

" END OF SECTION---------------------------------------------

" usefull plugins (apparently):
"         pictures in terminal: Uberzug, coc, nerdtree, fzf (ili Ctrl P), vis.vim", lightline, airline, telescope, vim-which-key(keybind helper), nvim colorizer (oboji hex boje u terminalu), treesitter, undotree, fugitive, AG(search), tpope/vim-surround, Plugin stuff, smoothscroll (da se ne izgubis kad skrolas)
call plug#begin("~/.vim/plugged")
Plug 'gruvbox-community/gruvbox'        " Colorscheme
Plug 'tomasiser/vim-code-dark'          " Colorscheme
Plug 'glacambre/firenvim'
call plug#end()

" Vim-studio-dark colortheme for everything except for markdown (.md) files
autocmd BufEnter * colorscheme codedark
autocmd BufEnter *.md colorscheme gruvbox

" Makes nvim background same as regular terminal. Used for transparency
"highlight normal guibg=none



" TODO this shit
"set noswapfile " doesn't create swap files
"set omnifunc=syntaxcomplete#Complete
"enable folding

"set foldmethod=indent
"set foldlevel=99

" NEKI FAJL, EVO CELI CONTETNI OVDE

""-moze se koristiti :find <file> da bi se nasao file, moze se TAB-ovati (moze
""se koristiti wildcard-ovi)
""-kad je upaljeno vise fajlova mogu se listovati sa :ls, a da bi usao u neki
""od njih moze sa :b <substring_imena_fajla>
"
"
""-nesto za nalazenje tagova: moze Ctrl+] ili Ctrl+g (ovo drugo cesce radi iz
""nekog razloga), da bi namestio tagove odes u parent directory i napises
"""ctags -R ."
"
""autocomplete:---------------------------------------
""-autocomplete Ctrl+n (trebaju tags)(kod tih lista kad se upale, moze Ctrl+P za
""previous element)
""-Ctrl+x+(ctrl)n, samo za taj file
""-Ctrl+x+(ctrl)], za imena fajlova
""-Ctrl+x+(ctrl)j, samo za tagove
"TODO: Neki shortcut za š, itd? Da ne moram da menjam tastaturu
"TODO: mozda? ukljuciti wrap za beleske

" usefull plugins: ctags, fzf, vim-vinegar,
"random citat: I use exuberate ctags/FZF/vim-vinegar to navigate between buffers and files, vimwiki for note taking and task management, ALE for linting/code formatting, and a couple of other tpope plugins to improve the native Vim experience like vim-commentary and vim-surround.
"random citat: Anecdotally... Almost everyone where I work uses vim + YCM + vimspector. We mostly c++ with lots of java and TCL and you name it. Reasonably big multi national company.

" dobro resenje za copy paste?
"
" " Copy to clipboard
"vnoremap  <leader>y  "+y
"nnoremap  <leader>Y  "+yg_
"nnoremap  <leader>y  "+y
"nnoremap  <leader>yy  "+yy
"
"" " Paste from clipboard
"nnoremap <leader>p "+p
"nnoremap <leader>P "+P
"vnoremap <leader>p "+p
"vnoremap <leader>P "+P

" Better indenting, ovo vrv bolje ne koristiti, jer moze samo . command da se koristi
"vnoremap < <gv
"vnoremap > >gv
