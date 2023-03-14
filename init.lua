require("impatient").enable_profile()
function disable_built_in_plugins()
	vim.g.loaded = 1
	local disabled_built_ins = {
		"netrw",
		"netrwPlugin",
		"netrwSettings",
		"netrwFileHandlers",
		"gzip",
		"zip",
		"zipPlugin",
		"tar",
		"tarPlugin",
		"getscript",
		"getscriptPlugin",
		"vimball",
		"vimballPlugin",
		"2html_plugin",
		"logipat",
		"rrhelper",
		"spellfile_plugin",
	}

	for _, plugin in pairs(disabled_built_ins) do
		vim.g["loaded_" .. plugin] = 1
	end
end
-- disable all built-in plugins

function load_plugin_config()
	local home = os.getenv("HOME")
	local top_paths = vim.fn.readdir(string.format("%s/.config/nvim/lua/plugin-config/", home), [[v:val =~ '\.lua$']])
	for _, file in ipairs(top_paths) do
		file = file:gsub("%.lua$", "")
		require("plugin-config." .. file).config()
	end

	local lsp_paths = vim.fn.readdir(string.format("%s/.config/nvim/lua/completion/", home), [[v:val =~ '\.lua$']])
	for _, file in ipairs(lsp_paths) do
		file = file:gsub("%.lua$", "")
		require("completion." .. file).config()
	end

    local dap_paths = vim.fn.readdir(string.format("%s/.config/nvim/lua/dap", home), [[v:val =~ '\.lua$']])
    for _, file in ipairs(dap_paths) do
        file = file:gsub("%.lua", "")
        require("dap." .. file).config()
    end
end

vim.cmd("set background=dark")
vim.cmd("colorscheme deus")
vim.cmd("set nohidden")
require("plugin-config.galaxyline-themes.nerd-galaxyline")

disable_built_in_plugins()
local async
async = vim.loop.new_async(vim.schedule_wrap(function()
	require("basic")
	require("plugins")
	require("keybindings")
	require("autocommand")
	require("misc")

	load_plugin_config()
	async:close()
end))

async:send()
