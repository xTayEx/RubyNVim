local M = {}

function M.config()
	vim.opt.signcolumn = "yes"
	local lsp_zero = require("lsp-zero").preset({
		name = "recommended",
		set_lsp_keymaps = { omit = { "K" }, preserve_mappings = false },
		manage_nvim_lsp = true,
		suggest_lsp_servers = true,
		setup_servers_on_startup = true,
	})
	lsp_zero.nvim_workspace()
	lsp_zero.setup()

	local cmp = require("cmp")
	local lspkind = require("lspkind")
	cmp.setup({
		window = {
			documentation = cmp.config.window.bordered(),
		},
		formatting = {
			format = lspkind.cmp_format({
				mode = "symbol", -- show only symbol annotations
				maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

				-- The function below will be called before any actual modifications from lspkind
				-- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
				symbol_map = {
					Text = "  ",
					Method = "  ",
					Function = "  ",
					Constructor = "  ",
					Field = "  ",
					Variable = "  ",
					Class = "  ",
					Interface = "  ",
					Module = "  ",
					Property = "  ",
					Unit = "  ",
					Value = "  ",
					Enum = "  ",
					Keyword = "  ",
					Snippet = "  ",
					Color = "  ",
					File = "  ",
					Reference = "  ",
					Folder = "  ",
					EnumMember = "  ",
					Constant = "  ",
					Struct = "  ",
					Event = "  ",
					Operator = "  ",
					TypeParameter = "  ",
				},
				before = function(entry, vim_item)
					return vim_item
				end,
			}),
		},
	})
end

return M
