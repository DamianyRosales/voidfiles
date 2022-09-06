syntax on

set exrc
set guicursor=
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set scrolloff=8
set completeopt=menuone,noinsert,noselect
set colorcolumn=80
set signcolumn=yes

" disable autocomment on new line
set formatoptions-=cro


set encoding=UTF-8

" plugins

call plug#begin('~/.config/nvim/plugged')
    
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    " Theme
    Plug 'sainnhe/gruvbox-material'
    " Syntax
    Plug 'sheerun/vim-polyglot'
    " File explorer tab
    Plug 'scrooloose/NERDTree'
    " Dev icons in file explorer
    Plug 'ryanoasis/vim-devicons'
    " Auto pair ()[]{}
    Plug 'jiangmiao/auto-pairs'
    " Vim airline and airline themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " CSS colors displayer
    Plug 'ap/vim-css-color'    
    " Vim float terminal
    Plug 'voldikss/vim-floaterm'

    " Dart related plugins
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
call plug#end()

let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

" require plugin configs
lua require('nyro')


set background=dark
set termguicolors
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
