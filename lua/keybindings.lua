vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map("n", "<leader>w", "<cmd>w<CR>", opt)
map("n", "<leader>q", "<cmd>q<CR>", opt)
map("n", "<leader>ve", "<cmd>e ~/.config/nvim/init.lua<cr>", opt)
map("n", "<leader>vs", "<cmd>so ~/.config/nvim/init.lua<cr>", opt)
map("n", "<C-N>", "<cmd>bn<cr>", opt)
map("n", "<C-P>", "<cmd>bp<cr>", opt)
map("n", "<leader>d", "<cmd>bd<cr>", opt)
map("n", "J", "3j", opt)
map("n", "K", "3k", opt)
map("n", "<C-H>", "<C-W>h", opt)
map("n", "<C-J>", "<C-W>j", opt)
map("n", "<C-K>", "<C-W>k", opt)
map("n", "<C-L>", "<C-W>l", opt)

map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>", opt)
map("n", "<leader>gb", "<cmd>BufferLinePick<cr>", opt)

map("n", "<leader>af", "<cmd>lua require('spectre').open()<cr>", opt)
map("n", "<leader>at", "<cmd>TroubleToggle<cr>", opt)
