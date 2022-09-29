
call plug#begin('~/.config/nvim/plugged')
    
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'
    Plug 'hrsh7th/vim-vsnip'
    Plug 'hrsh7th/vim-vsnip-integ'

    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    " Theme
    Plug 'sainnhe/gruvbox-material'
    Plug 'folke/tokyonight.nvim'
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
    Plug 'thosakwe/vim-flutter'
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
    " tpope
    "Git plugin for vim
    Plug 'tpope/vim-fugitive'
call plug#end()
