" Color/Visual Options
syntax on
set termguicolors
if has ("gui_running")
    set guicursor+=a:blinkon0 " Disable cursor blinking in GVim
endif

" General Options
set relativenumber
set splitright
set splitbelow
set nowrap
set nobackup
set nocompatible
set noswapfile
set hlsearch
set incsearch
set ignorecase
set showmatch
set smartcase
set showcmd
set showmode
set ruler
set cursorline
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set laststatus=2
set scrolloff=10
set sidescrolloff=5
set colorcolumn=120
set belloff=all
set wildoptions=pum,fuzzy
set completeopt=menuone,preview,popup,noselect,fuzzy

" Set up statusline
set statusline=
set statusline+=%#TabLineSel#   " Change colour
set statusline+=\               " Space
set statusline+=\%f             " File type
set statusline+=\               " Space
set statusline+=\%h             " Help flag
set statusline+=\%r             " Read-Only flag
set statusline+=\%m             " Modified flag
set statusline+=\%w             " Preview window flag
set statusline+=\%q             " Quickfix\Location list
set statusline+=\               " Space
set statusline+=%#CursorLine#   " Change colour
set statusline+=\%=             " Split to right hand side
set statusline+=%#StatusLine#   " Change colour
set statusline+=\               " Space
set statusline+=\%y             " File type
set statusline+=\               " Space
set statusline+=\%n             " Buffer number
set statusline+=\               " Space
set statusline+=\%L             " Total amount of lines in buffer
set statusline+=\               " Space
set statusline+=%#TabLineSel#   " Change colour
set statusline+=\               " Space
set statusline+=\%l             " Line number
set statusline+=:               " Line/column number separator
set statusline+=\%v             " Visual column number
set statusline+=\               " Space
set statusline+=\%p             " File progress percentage
set statusline+=%%              " % Character
set statusline+=\               " Space

" Keymaps
let mapleader = " "
let maplocalleader = " "
nmap <leader>ww <Cmd>w<CR>
nmap <leader>wa <Cmd>wa<CR>
nmap <leader>wq <Cmd>wq<CR>
nmap <leader>qq <Cmd>q<CR>
nmap <leader>qa <Cmd>qa<CR>
nmap <leader>ee <Cmd>Lex<CR>
nmap <leader>. <Cmd>Ex<CR>
nmap <leader>cd <Cmd>cd %:h<CR>
nmap <leader>hn <Cmd>noh<CR>
nmap Y y$
nmap ; :
nmap \| <Cmd>vsplit<CR>
nmap - <Cmd>split<CR>
nmap <S-left> <Cmd>wincmd h<CR>
nmap <S-down> <Cmd>wincmd j<CR>
nmap <S-up> <Cmd>wincmd k<CR>
nmap <S-right> <Cmd>wincmd l<CR>
nmap <F5> <Cmd>vertical res +10<CR>
nmap <F6> <Cmd>vertical res -10<CR>
nmap <F7> <Cmd>horizontal res +10<CR>
nmap <F8> <Cmd>horizontal res -10<CR>
