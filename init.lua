require('impatient').enable_profile()
require('basic')
require('plugins')
require('keybindings')

vim.cmd('set background=dark')
vim.cmd('colorscheme deus')

local top_paths = vim.split(vim.fn.glob('~/.config/nvim/lua/plugin-config/*lua'), '\n')
for i, file in pairs(top_paths) do
    vim.cmd('source ' .. file)
end

require('plugin-config.galaxyline-themes.nerd-galaxyline')
