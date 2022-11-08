require('packer').startup(function()
    use 'wbthomason/packer.nvim'
    -- Themes
    use 'sainnhe/gruvbox-material'
    use 'sainnhe/everforest'
    use 'olimorris/onedarkpro.nvim'
    -- IDE pluggins
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'

    -- File tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
    }

    -- Alpha
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = function ()
            require'alpha'.setup(require'alpha.themes.startify'.config)
        end
    }

    -- Vim current word highlighting
    use 'dominikduda/vim_current_word'
    -- CSS colors displayer
    use 'ap/vim-css-color'
    -- Vim airline and airline themes
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    -- Auto pair for ()[]{}
    use 'jiangmiao/auto-pairs'

    -- Dart/Flutter related plugins
    use 'thosakwe/vim-flutter'
    use 'natebosch/vim-lsc'
    use 'natebosch/vim-lsc-dart'
end)
