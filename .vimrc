" This must be first, because it changes other options as side effect
set nocompatible

" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()

" change the mapleader from \ to ,
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Hide buffers instead of closing them
set hidden

set nowrap        " don't wrap lines
set tabstop=2     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to
                  "    shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set expandtab     " replace tabs with spaces
set ruler         " always show line info

set wm=2
set textwidth=78  " wrap at 80

" set filetype stuff to on
filetype on
filetype plugin on
filetype indent on

" add filetype mappings for new files
au BufNewFile,BufRead *.clj set filetype=clojure

" Force terminal to use 256 colors if possible
set t_Co=256

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif

" color scheme
colorscheme wombat

set list          " highlight whitespace
set listchars=tab:>.,trail:.,extends:#,nbsp:.

" Use Q for formatting the current paragraph (or selection)
vmap Q gq
nmap Q gqap

set pastetoggle=<F2>

" disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>


" NERD tree mappings
nmap ,n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap ,m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap ,N :NERDTreeClose<CR>

" VCS command mappings
nmap ,cc :VCSCommit<CR>
nmap ,ca :VCSAdd<CR>
nmap ,cd :VCSDiff<CR>
