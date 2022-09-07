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
    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

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

" --> Airline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#formatter = 'jsformatter'
    let g:airline_powerline_fonts = 1

"remaps

" --> NERDTree

    nnoremap <C-n> :NERDTree<CR>
    nnoremap <C-t> :NERDTreeToggle<CR>
    nnoremap <C-f> :NERDTreeFind<CR>

    let NERDTreeShowHidden=1

    autocmd VimEnter * NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Go to next tab and previous tab
    
    nnoremap <C-e> :bnext<CR>
    nnoremap <C-q> :q!<CR>

" Close current tab
    nnoremap <C-x> :bd<CR>
    
" Save file
    nnoremap <C-s> :w<CR>
" Quit
    nnoremap <C-z> :tabnew<CR>
