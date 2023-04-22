return require("packer").startup({
	function(use)
		-- Packer can manage itself
		use("wbthomason/packer.nvim")
		-- use 'joshdick/onedark.vim'
		use({ "kyazdani42/nvim-web-devicons" })
		use({
			"kyazdani42/nvim-tree.lua",
			requires = {
				"kyazdani42/nvim-web-devicons", -- optional, for file icon
			},
			-- config = function() require'nvim-tree'.setup {} end
		})
		use({ "bfrg/vim-cpp-modern" })
		use({ "nvim-lua/popup.nvim" })
		use({
			"rcarriga/nvim-dap-ui",
			requires = { "mfussenegger/nvim-dap" },
			config = function()
				require("dapui").setup()
			end,
		})
		use({
			"numToStr/Comment.nvim",
			config = function()
				require("Comment").setup()
			end,
		})
		use({
			"folke/neodev.nvim",
			config = function()
				require("neodev").setup({
					library = { plugins = { "nvim-dap-ui" }, types = true },
				})
			end,
		})
		use({
			"akinsho/bufferline.nvim",
			requires = "kyazdani42/nvim-web-devicons",
		})
		use({ "RRethy/vim-illuminate" })
		use({
			"windwp/nvim-autopairs",
			config = function()
				require("nvim-autopairs").setup()
			end,
		})
		use({
			"NTBBloodbath/galaxyline.nvim",
			branch = "main",
			-- some optional icons
			requires = { "kyazdani42/nvim-web-devicons", opt = true },
		})
		use({
			"Avimitin/neovim-deus",
		})
		use({
			"nvim-telescope/telescope.nvim",
			requires = { { "nvim-lua/plenary.nvim" } },
		})
		use({ "stevearc/aerial.nvim" })
		use({
			"krady21/compiler-explorer.nvim",
			config = function()
				require("compiler-explorer").setup()
			end,
		})
		use({
			"rmagatti/auto-session",
			config = function()
				require("auto-session").setup({
					log_level = "info",
					auto_session_suppress_dirs = { "~/", "~/Projects" },
				})
			end,
		})
		use({
			"lewis6991/gitsigns.nvim",
			config = function()
				require("gitsigns").setup()
			end,
		})
		use({
			"luukvbaal/stabilize.nvim",
			config = function()
				require("stabilize").setup()
			end,
		})
		use({
			"nvim-treesitter/nvim-treesitter",
			run = ":TSUpdate",
		})
		use({ "nvim-treesitter/nvim-treesitter-context" })
		use({
			"ahmedkhalf/project.nvim",
			config = function()
				require("project_nvim").setup({})
			end,
		})
		use({ "dhruvasagar/vim-zoom" })
		use({ "h-hg/fcitx.nvim" })
		use({
			"VonHeikemen/lsp-zero.nvim",
			branch = "v1.x",
			requires = {
				-- LSP Support
				{ "neovim/nvim-lspconfig" },
				{ "williamboman/mason.nvim" }, -- Optional
				{ "williamboman/mason-lspconfig.nvim" },

				-- Autocompletion
				{ "hrsh7th/nvim-cmp" },
				{ "hrsh7th/cmp-buffer" },
				{ "hrsh7th/cmp-path" },
				{ "saadparwaiz1/cmp_luasnip" },
				{ "hrsh7th/cmp-nvim-lsp" },
				{ "hrsh7th/cmp-nvim-lua" },
				{ "hrsh7th/cmp-nvim-lsp-signature-help" },

				-- Snippets
				{ "L3MON4D3/LuaSnip" },
				{ "rafamadriz/friendly-snippets" },
			},
		})
		use({
			"kosayoda/nvim-lightbulb",
			config = function()
				vim.cmd([[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]])
			end,
		})
		use({
			"folke/trouble.nvim",
			requires = "kyazdani42/nvim-web-devicons",
			config = function()
				require("trouble").setup({
					action_keys = {
						hover = "T",
					},
					indent_lines = false,
				})
			end,
		})

		use({
			"nvim-telescope/telescope-bibtex.nvim",
			requires = {
				{ "nvim-telescope/telescope.nvim" },
			},
		})
		use({ "gelguy/wilder.nvim" })
		use({ "kevinhwang91/nvim-bqf", ft = "qf" })
		use({
			"sindrets/diffview.nvim",
			requires = "nvim-lua/plenary.nvim",
		})
		use({
			"phaazon/hop.nvim",
			branch = "v2", -- optional but strongly recommended
			config = function()
				-- you can configure Hop the way you like here; see :h hop-config
				require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
			end,
		})
		use({
			"iamcco/markdown-preview.nvim",
			run = "cd app && npm install",
			setup = function()
				vim.g.mkdp_filetypes = { "markdown" }
			end,
			ft = { "markdown" },
		})
		use({
			"ethanholz/nvim-lastplace",
			config = function()
				require("nvim-lastplace").setup({
					lastplace_ignore_buftype = { "quickfix", "nofile", "help" },
					lastplace_ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
				})
			end,
		})

		use({
			"danymat/neogen",
			config = function()
				require("neogen").setup({})
			end,
			requires = "nvim-treesitter/nvim-treesitter",
			-- Uncomment next line if you want to follow only stable versions
			-- tag = "*"
		})

		use({
			"j-hui/fidget.nvim",
			config = function()
				require("fidget").setup({})
			end,
		})
		use({
			"nmac427/guess-indent.nvim",
			config = function()
				require("guess-indent").setup({})
			end,
		})
		use({
			"lukas-reineke/indent-blankline.nvim",
			config = function()
				require("indent_blankline").setup({
					char = "¦",
				})
			end,
		})
		use({ "f3fora/cmp-spell" })
		use({ "hrsh7th/cmp-nvim-lua" })

		use({ "onsails/lspkind-nvim" })

		use({ "akinsho/toggleterm.nvim", branch = "main" })
		use({ "nvim-telescope/telescope-file-browser.nvim" })
		use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
		use({ "nvim-telescope/telescope-media-files.nvim" })
		use({ "folke/which-key.nvim" })
		use({ "nvim-telescope/telescope-symbols.nvim" })
		use({ "haya14busa/is.vim" })
		use({ "McAuleyPenney/tidy.nvim", event = "BufWritePre", branch = "main" })
		use({ "lewis6991/impatient.nvim" })
		use({ "dstein64/vim-startuptime", cmd = "StartupTime" })
		use({ "stevearc/stickybuf.nvim" })
		use({ "karb94/neoscroll.nvim" })
		use({ "folke/lsp-colors.nvim" })
		use({ "nathom/filetype.nvim" })
		use({ "Pocco81/AutoSave.nvim" })
		use({ "ishan9299/nvim-solarized-lua" })
		use({ "sbdchd/neoformat" })
		use({ "dhruvasagar/vim-table-mode" })
		use({
			"nvim-colortils/colortils.nvim",
			cmd = "Colortils",
			branch = "main",
			config = function()
				require("colortils").setup()
			end,
		})
		use({
			"themercorp/themer.lua",
			require("themer").setup({ enable_installer = true }),
		})
		use({
			"dinhhuy258/vim-local-history",
			branch = "master",
		})
		use({
			"brenoprata10/nvim-highlight-colors",
			config = function()
				require("nvim-highlight-colors").setup({})
			end,
		})
		use({
			"MrcJkb/haskell-tools.nvim",
			requires = {
				"neovim/nvim-lspconfig",
				"nvim-lua/plenary.nvim",
				"nvim-telescope/telescope.nvim", -- optional
			},
		})
		use({ "tamago324/nlsp-settings.nvim" })
		use({ "chentoast/marks.nvim" })
		use({ "posva/vim-vue" })
		use({ "chemzqm/wxapp.vim" })
		use({ "rainbowhxch/accelerated-jk.nvim" })
		use({ "kmonad/kmonad-vim" })
		use({
			"stevearc/dressing.nvim",
			config = function()
				require("dressing").setup()
			end,
		})
		-- games or plugins for fun
		use({ "eandrju/cellular-automaton.nvim" })
		-- luarock
		use({ "romgrk/fzy-lua-native" })
	end,
})
