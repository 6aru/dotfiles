" --- Essential Settings ---
" Set to nocompatible so Vim's behavior is consistent
set nocompatible

" Enable syntax highlighting
syntax on

" Enable filetype plugins and indentation
filetype plugin indent on

" --- Usability Improvements ---
" Show line numbers
set number

" Show relative line numbers (great for navigation)
set relativenumber

" Tabs and Indentation
set tabstop=4       " Number of spaces a Tab is worth
set shiftwidth=4    " Number of spaces to use for each step of (auto)indent
set expandtab       " Converts tabs to spaces
set autoindent      " Copy indent from the previous line
set smartindent     " Smarter indentation for code

" --- Visuals and Navigation ---
" Highlight all search matches
set hlsearch

" Highlight matches as you type
set incsearch

" Show the current mode in the bottom-left corner
set showmode

" Disable the annoying beep
set noerrorbells

" Enable clipboard integration.
" Use "unnamedplus" to use the system clipboard
set clipboard=unnamedplus

" Show tabs and trailing spaces
set list
set listchars=tab:>>,trail:·

" Show a column to help you with line length
" set cursorcolumn

" Highlight the line the cursor is on
" set cursorline

" Set the leader key to a space
let mapleader = " "

" --- Basic Mappings ---
" The leader key is used to map a key to a command.
" <leader>w maps to the write (save) command
nnoremap <leader>w :w<CR>

" <leader>q maps to the quit command
nnoremap <leader>q :q<CR>

" Map <leader>c to comment a line
" This mapping works in Visual mode to comment a block of text
vmap <leader>c :s/^/#/<CR>

" Map <leader>s to reload the current configuration file
" Useful when editing .vimrc or i3 config
nnoremap <leader>s :source %<CR>

" Enable persistent undo
set undofile
set undodir=~/.vim/undo

" Set smartcase to ignore case unless search term has a capital letter
set ignorecase
set smartcase

" Keep a few lines above and below the cursor when scrolling
set scrolloff=8

" Gives the command-line more vertical space for messages
set cmdheight=2

" Improves the command-line completion menu
set wildmenu

" Allows you to use your mouse in all modes (optional)
" set mouse=a

" Call Vim-Plug's main function
call plug#begin('~/.vim/plugged')

" List your plugins here
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vividchalk'
Plug 'rakr/vim-one'
Plug 'cocopon/iceberg.vim'

" Call Vim-Plug's end function to finalize
call plug#end()

set guifont=FiraCode\ Nerd\ Font\ Mono\ Regular:h10

let g:airline_powerline_fonts = 1

" Set the colorscheme to VividChalk
" colorscheme vividchalk
" colorscheme one
colorscheme iceberg

set background=dark " for the dark version
" set background=light " for the light version

" Optional: if your terminal supports true colors, this can improve the look
set termguicolors

" Airline Theme
"let g:airline_theme='one'
let g:airline_theme='iceberg'


