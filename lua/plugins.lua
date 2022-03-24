return require('packer').startup(function()
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
    -- use {
    --    'romgrk/barbar.nvim',
    --    requires = {'kyazdani42/nvim-web-devicons'}
    -- }
    -- using packer.nvim
    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use {
        'windwp/nvim-autopairs',
        config = function() require('nvim-autopairs').setup() end
    }
    use {'neoclide/coc.nvim', branch = 'release'}
    use {
        'glepnir/galaxyline.nvim',
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
    use { "akinsho/toggleterm.nvim" }
    use { "f-person/git-blame.nvim" }
    use { "lukas-reineke/indent-blankline.nvim"}
    use { "liuchengxu/vista.vim" }
    use { "mtoohey31/chafa.vim" }
    use { "ellisonleao/glow.nvim" }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use { "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
    use { "fannheyward/telescope-coc.nvim" }
    use { "folke/which-key.nvim" }
    use { "nvim-telescope/telescope-symbols.nvim" }
    use { "haya14busa/is.vim" }
    use { "McAuleyPenney/tidy.nvim", event = "BufWritePre" }
end)
