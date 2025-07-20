" Color/Visual Options
syntax on
set termguicolors
set guicursor+=a:blinkon0 " Disable cursor blinking in GVim

" General Options
set relativenumber
set splitright
set splitbelow
set nowrap
set nobackup
set nocompatible
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

" Keymaps
let mapleader = " "
let maplocalleader = " "
nmap <leader>ww :w<CR>
nmap <leader>wa :wa<CR>
nmap <leader>qq :q<CR>
nmap <leader>qa :qa<CR>
nmap <leader>. :Ex<CR>
