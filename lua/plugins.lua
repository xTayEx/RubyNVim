return require('packer').startup({
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'
        -- use 'joshdick/onedark.vim'
        use { 'kyazdani42/nvim-web-devicons' }
        use {
            'kyazdani42/nvim-tree.lua',
        requires = {
                'kyazdani42/nvim-web-devicons', -- optional, for file icon
	    }
            -- config = function() require'nvim-tree'.setup {} end
        }
        use { "nvim-lua/popup.nvim"}
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
            config = function()
                require("stabilize").setup()
            end
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
        use { 'nvim-treesitter/nvim-treesitter-context' }
        use {
            "ahmedkhalf/project.nvim",
            config = function()
                require("project_nvim").setup { }
            end
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
                {'hrsh7th/cmp-nvim-lsp-signature-help'},

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
            config = function ()
                require("trouble").setup {
                    action_keys = {
                        hover = "T"
                    },
                    indent_lines = false
                }
            end
        }

        use { "nvim-telescope/telescope-bibtex.nvim",
            requires = {
                {'nvim-telescope/telescope.nvim'},
            },
        }
        use { 'gelguy/wilder.nvim' }
        use {
            'sindrets/diffview.nvim',
            requires = 'nvim-lua/plenary.nvim'
        }
        use {
            'michaelb/sniprun', 
            run = 'bash ./install.sh',
            requires = 'rcarriga/nvim-notify',
            branch = 'dev'
        }
        use {
            "iamcco/markdown-preview.nvim",
            run = "cd app && npm install",
            setup = function()
                vim.g.mkdp_filetypes = { "markdown" }
            end,
            ft = { "markdown" },
        }
        use {
            'ethanholz/nvim-lastplace',
            config = function ()
                require('nvim-lastplace').setup {
                    lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
                    lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
                }
            end
        }

        use {
            'filipdutescu/renamer.nvim',
            config = function ()
                require('renamer').setup {
                    title = 'Rename'
                }
            end,
            branch = 'master',
            requires = { {'nvim-lua/plenary.nvim'} },
        }
        use {
            "danymat/neogen",
            config = function()
                require('neogen').setup {}
            end,
            requires = "nvim-treesitter/nvim-treesitter",
            -- Uncomment next line if you want to follow only stable versions
            -- tag = "*"
        }

        use { "f3fora/cmp-spell" }
        use { "hrsh7th/cmp-nvim-lua" }

        use { "onsails/lspkind-nvim" }

        use { "akinsho/toggleterm.nvim", branch = "main" }
        use { "f-person/git-blame.nvim" }
        use { "lukas-reineke/indent-blankline.nvim"}
        use { "mtoohey31/chafa.vim" }
        use { "ellisonleao/glow.nvim" }
        use { "nvim-telescope/telescope-file-browser.nvim"}
        use { "nvim-telescope/telescope-fzf-native.nvim", run = "make"}
        use { "nvim-telescope/telescope-media-files.nvim"}
        use { "folke/which-key.nvim" }
        use { "nvim-telescope/telescope-symbols.nvim"}
        use { "haya14busa/is.vim" }
        use { "McAuleyPenney/tidy.nvim", event = "BufWritePre", branch = "main" }
        use { "lewis6991/impatient.nvim" }
        use { "dstein64/vim-startuptime" , cmd = 'StartupTime'}
        use { "stevearc/stickybuf.nvim" }
        use { "karb94/neoscroll.nvim" }
        use { "folke/lsp-colors.nvim" }
        use { "nathom/filetype.nvim" }
        use { 'Pocco81/AutoSave.nvim' }
        use { 'ishan9299/nvim-solarized-lua' }
        use { 'sbdchd/neoformat' }
        use { 'dhruvasagar/vim-table-mode' }
        use {
            'nvim-colortils/colortils.nvim',
            cmd = "Colortils",
            config = function()
                require("colortils").setup()
            end,
        }
        use {
            'themercorp/themer.lua',
            require("themer").setup({ enable_installer = true })
        }
        use {
            "dinhhuy258/vim-local-history",
            branch = "master"
        }
        use {
            'brenoprata10/nvim-highlight-colors',
            config = function ()
                require('nvim-highlight-colors').setup {}
            end
        }
        use {
            'MrcJkb/haskell-tools.nvim',
            requires = {
                'neovim/nvim-lspconfig',
                'nvim-lua/plenary.nvim',
                'nvim-telescope/telescope.nvim', -- optional
            }
        }
        use { "chentoast/marks.nvim" }
        use { "posva/vim-vue" }
        use { 'chemzqm/wxapp.vim' }

        -- luarock
        use { 'romgrk/fzy-lua-native' }
    end
})
