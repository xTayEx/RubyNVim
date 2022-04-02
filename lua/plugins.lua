return require('packer').startup({function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- use 'joshdick/onedark.vim'
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup() end
    }
    -- use {'neoclide/coc.nvim', branch = 'release'}
    use {
        'NTBBloodbath/galaxyline.nvim',
        branch = 'main',
        -- some optional icons
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'Avimitin/neovim-deus'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {'stevearc/aerial.nvim'}
    use {
        'rmagatti/auto-session',
        config = function()
            require('auto-session').setup {
            log_level = 'info',
            auto_session_suppress_dirs = {'~/', '~/Projects'}
        }
        end
    }
    use {
        "luukvbaal/stabilize.nvim",
        config = function() require("stabilize").setup() end
    }
    use {
        'pwntester/octo.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'nvim-telescope/telescope.nvim',
            'kyazdani42/nvim-web-devicons',
        },
        config = function ()
            require"octo".setup()
        end
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
    'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/nvim-lsp-installer'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use {
        "kosayoda/nvim-lightbulb",
        config = function ()
            vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]])
        end
    }
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup { }
        end
    }
    use { 'hrsh7th/cmp-cmdline' }
    use { "f3fora/cmp-spell" }
    use { "hrsh7th/cmp-nvim-lua" }

    use { "onsails/lspkind-nvim" }

    use { "akinsho/toggleterm.nvim" }
    use { "f-person/git-blame.nvim" }
    use { "lukas-reineke/indent-blankline.nvim"}
    use { "mtoohey31/chafa.vim" }
    use { "ellisonleao/glow.nvim" }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "fannheyward/telescope-coc.nvim" }
    use { "folke/which-key.nvim" }
    use { "nvim-telescope/telescope-symbols.nvim" }
    use { "haya14busa/is.vim" }
    use { "McAuleyPenney/tidy.nvim", event = "BufWritePre" }
    use { "lewis6991/impatient.nvim" }
    use { "dstein64/vim-startuptime" }
    use { "stevearc/stickybuf.nvim" }
    use { "karb94/neoscroll.nvim" }
    use { "folke/lsp-colors.nvim" }
    use { "nathom/filetype.nvim" }
    end,
})
