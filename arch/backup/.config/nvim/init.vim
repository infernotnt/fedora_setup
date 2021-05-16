" Do ":so%" after changing the config file to reflect the changes(only works in this file)

" For help about any nvim command (anything from this file) do: ':h <command>'

"TODO za slecee urdejivanje: gledaj koje komande gde da stavis u koju kategoriju
"TODO: kad budes pravio finalni .vimrc, podeliti na 3 sekcije (sve je komentirano sem prve sekcije, i mozdaaaa malog dela druge, mada onda vec mozes staviti u prvu mozda?):
"1., korisna sigurno, ova se koristi (think george hotz .vimrc?(https://github.com/littlemountainman/geohot-terminal)
"2., stvari koje ne moram bas da koristim, ali korisne su ponekad, samo ne treba bas da mi stoje ukljucene jer krse vim filozofiju ili tako nesto (think: misem da mozes da pomeras gde ces biti, better tabbing...)
"3., stvari koje jos ne znam sta rade, ali ce mi mozda biti korisno jednog dana (think: window navigation)


" Something for Windows 10 comptability
set nocompatible

"plugin stuff =====================================================================================================================================
" usefull plugins (apparently):
"         pictures in terminal: Uberzug, coc, nerdtree, fzf (ili Ctrl P), vis.vim", lightline, airline, telescope, vim-which-key(keybind helper), nvim colorizer (oboji hex boje u terminalu), treesitter, undotree, fugitive, AG(search), tpope/vim-surround, Plugin stuff, smoothscroll (da se ne izgubis kad skrolas), snipmate, nerdcommenter, vim-easymotion, vim-fugitive (git stuff), vim gitgutter, delimitMate (automaticly close quotes and brackets)
call plug#begin("~/.vim/plugged")
    Plug 'gruvbox-community/gruvbox'        " Colorscheme
    Plug 'tomasiser/vim-code-dark'          " Colorscheme

    Plug 'dhruvasagar/vim-table-mode'       " For tables (pandoc compatible)
    
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    " Plug 'kblin/vim-fountain'
    Plug 'vim-pandoc/vim-pandoc'            " Markdown
    Plug 'vim-pandoc/vim-pandoc-syntax'     " Markdown
    " Plug 'plasticboy/vim-markdown'
    " Plug 'godlygeek/tabular'
  
    "Plug 'glacambre/firenvim'
    "Plug 'reedes/vim-pencil'
call plug#end()

" Settings for Plugin: vim-table-mode ============================================================
" (DOESNT WORK: https://www.youtube.com/watch?v=XdDUGAePASA&t=535s) grid_tables for pandoc (must use monospace font)
"let g:table_mode_corner='+'
"let g:table_mode_corner_corner='+'
"let g:table_mode_header_fillchar='='


" For pandoc pipe_tables (does NOT require monospace font), they don't supports lists in them, so they are inferior to grid_tables 
let g:table_mode_corner='|'
" ==========================================================================================

" Markdown preview https://github.com/iamcco/markdown-preview.nvim =========================================================
nmap <C-s> <Plug>MarkdownPreview

"======================================================================================================================================================================================================
" Refresh the to reflect the new vim config (it's usually best to just restart vim) (TODO, obrisi vrv, meh, ko ce pamtit ovo)
"nnoremap <C-s>  :source ~/.config/nvim/init.vim<Enter>

"Vim note taking------------------------------------------------------------------------------------------------------------
" tabing (org mode?), http://vimcasts.org/episodes/aligning-text-with-tabular-vim/

" Set the leader key to " " (space)
let mapleader =  " "

"================================================================================================================================================
" Move selected a line up or down
" meh: vnoremap J :m '>+1<CR>gv=gv
" meh: vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>w :w<Enter>

nnoremap <leader>/ :noh<Enter>

"================================================================================================================================================

"TODO: smanjiti malkice onaj waste-ovan space ispod kucanja editor komande, msm da sam imao setting koji to radi ili ga idalje imam negde

"TEST---------

" Always display the status line (TODO: idk irl, stavi u deafult stuff)
set laststatus=2

"TEST---------

syntax enable

" Theme (e.g. light or dark theme)
set background=dark

"================================================================================================================================================
" Copy/paste from and to system with Ctrl-c and Ctrl-p . Potentially better than sharing the vim copy/paste clipboard with the system. This will only put it to the system clipboard if you do Ctr+c (in visual mode) and Ctrl+p(any mode). If using this, disable the line "set clipboard=unnamedplus". (the system clipboard is in the "+ register)
"vnoremap <C-c> "+y
"noremap <C-v> "+P


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
" Makes vim share the copy paste clipboard with the system
set clipboard=unnamedplus
"==============================================================================

set tabstop=4

set expandtab

" Enables auto indentation. Indents the next line like the current one.
set autoindent

" vidi da li je essential, grupisati sa: set tabstop=
set softtabstop=4

" todo?
filetype plugin on

" Enables highlighting when searching with "/", to disable do // or ":nohl"
set hlsearch

" Make search canse insenitive, you can make it sensitive with \C
set ignorecase

" Highlights as you search
set incsearch

" Enable relative lines
set relativenumber

" Makes your current line show the actual line number in the file (used for "set relativenumber")
set number

" F6 compiles currently open file based on file type
" Compile markdown (.md) files to the pdf equivalent, and open it in brave //TODO open it in $BROWSER
autocmd FileType markdown noremap <f6> <esc>:w<enter> :!pandoc %:p -o %:p:r.pdf <enter>
" Compile C++ code (TODO: open resulting program in new window or something like that?)
autocmd FileType cpp nnoremap <f6> <esc>:w<enter>:!g++ -std=c++17 %:p -o %:p:r<enter>
autocmd FileType c nnoremap <f6> <esc>:w<enter>:!gcc %:p -o %:p:r<enter>

" Spell check (o for ortography??), staviti mozda da detektuje na kojoj sam tastaturi i da taj jezik checkuje?
nnoremap <leader>e :setlocal spell! spelllang=en_us<Enter>
nnoremap <leader>s :setlocal spell! spelllang=sr_RS<Enter>
"nnoremap <leader>l :setlocal spell! spelllang=sr_latin<Enter>

" Autocomplete commands, files, everything. Ctrl+n(n=next), Ctrl+p(p=previous)
set wildmode=longest,list,full

" Auto completion ignore case
set wildignorecase

" TODO: actually, idk
set omnifunc=syntaxcomplete#Complete

" Enables autocompletion for file names
set path+=**

" ----- Optional - SECTION: ------------------------------------------------------------------------------



" Enables changing your cursor position with mouse (you should use this very rarely)
set mouse=a

" Enables transparency. Background becomes like the terminal one
"highlight normal guibg=none

" Disable wrap
set nowrap

" Enable wrap for markdown files
autocmd BufEnter *.md set wrap

" Vim-studio-dark colortheme for everything except for markdown (.md) files
autocmd BufEnter * colorscheme codedark
autocmd BufEnter *.md colorscheme gruvbox

" When you scroll up/down, it makes your screen move before your cursor hits the last/first line
set scrolloff=5

set smartindent " Idk, some say you should use, some say you shouldn't

" Sets the process title to something related to the file name
set title

" Enables the graphical line on your current line
"set cursorline
"highlight Cursorline cterm=bold

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
set smarttab


" TODO: idk irl (Always show tabs)
"set showtabline=2

"TODO: idk, recommended by coc
"set nobackup
"TODO: idk, recommended by coc
"set nowritebackup

" We don't need to see things like --INSER-- anymore (TODO, disable make it acutally show the mode)
"set noshowmode, TODO - nesto override-uje ovo, vrv nesto ispod ovoga.  najbolje da skontam sta to over-ride-uje, ili da stavim na dno fajla ako ne mogu da skontam
set showmode

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
map <leader>c :!clear && shellcheck -x %<Enter>

"------------------------------------------------------------------------------------------------------------

" set the tab length in spaces
" auto indentation on new line
set shiftwidth=4

" (vrv ukljuci?)makes new tabs in insert mode become spaces
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
set undodir=~/.vim/undodir
set undofile

" rwxrob(onaj deda) settings for backup n stuff ---- TODO
set nobackup
set noswapfile
set nowritebackup

set noruler
set statusline=
set statusline+=%*\ %<%.60F%*                      " path, trunc to 80 length
set statusline+=\ [%{strlen(&ft)?&ft:'none'}]      " filetype
set statusline+=%*\ %l:%c%*                        " current line and column
set statusline+=%*\ %p%%%*                         " percentage

" Make Y consistent with D and C (yank til end)
nnoremap Y y$

set wildmenu

" todo idk
set omnifunc=syntaxcomplete#Complete
" -----


" TODO
set termguicolors


" TODO
set noshowmode
set completeopt=menuone,noinsert,noselect

" vertical line on the right
"set colorcolumn=80

" idk, the bar on the left of line numbers, useful for git integration apparently
"set signcolumn=yes

" (stavi u default useless) idk, apparently not worth it, gives more space for displaying messages, but takes away from working space (the thing on the bottom of the screen)
set cmdheight=1

" Idk, TODO, Having longer updatetime(default is 4000ms = 4s) leads to more noticiable delays and poor user experience.
"set updatetime=50

" Idk, likely useless
"set shortmess+=c

" END OF SECTION---------------------------------------------



" For better navigation with wrapped lines
noremap j gj
noremap k gk

" Makes nvim background same as regular terminal. Used for transparency
"highlight normal guibg=none



" TODO this shit
"set noswapfile " doesn't create swap files
"set omnifunc=syntaxcomplete#Complete

" Fold stuff==============================
set foldenable

nnoremap , za
"enable folding

" TODO, igraj se sa ovim?
set foldmethod=marker
"set foldlevel=99
"==========================================

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

" Better indenting, ovo vrv bolje ne koristiti, jer moze samo . command da se koristi
"vnoremap < <gv
"vnoremap > >gv

"nnoremap <Tab> %
