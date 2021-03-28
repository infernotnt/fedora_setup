call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'

call plug#end()

"NerdTree stuff
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"

"enable folding
set foldmethod=indent
set foldlevel=99

au BufNewFile,BufRead *.py,*.java,*.cpp,*.c,*.cs,*.rkt,*.h,*.html
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

syntax on

set nu rnu " relative line numbering
set clipboard=unnamed " public copy/paste register
set ruler
set showcmd
set noswapfile " doesn't create swap files
set noshowmode
set shortmess+=c
set omnifunc=syntaxcomplete#Complete

set backspace=indent,eol,start " let backspace delete over lines
set autoindent " enable auto indentation of lines
set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered
set hlsearch "highlights matching searches

"ugasi highlight posle search-a(/asdf) na '//'
nnoremap // :noh<return>

"upali terminal na '\'
nnoremap \ :te<enter>
nnoremap <f6> <esc>:w<enter>:!g++ -std=c++11 %<enter>

highlight ColorColumn ctermbg=0 guibg=lighgray


colorscheme gruvbox
set background=dark


"luke smith ispod

"autocomplete u : komandama
set wildmode=longest,list,full

set splitbelow splitright
