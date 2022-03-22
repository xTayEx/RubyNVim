vim.g.mapleader = ","
vim.g.maplocalleader = ","

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map("n", "<leader>w", ":w<CR>", opt)
map("n", "<leader>q", ":q<CR>", opt)
map("n", "<leader>ve", ":e ~/.config/nvim/init.lua<cr>", opt)
map("n", "<leader>vs", ":so ~/.config/nvim/init.lua<cr>", opt)
map("n", "<C-N>", ":bn<cr>", opt)
map("n", "<C-P>", ":bp<cr>", opt)
map("n", "<leader>d", ":bd<cr>", opt)
map("n", "J", "3j", opt)
map("n", "K", "3k", opt)
map("n", "<C-H>", "<C-W>h", opt)
map("n", "<C-J>", "<C-W>j", opt)
map("n", "<C-K>", "<C-W>k", opt)
map("n", "<C-L>", "<C-W>l", opt)

map("n", "<leader>e", ":NvimTreeToggle<cr>", opt)
map("n", "<leader>gb", ":BufferLinePick<cr>", opt)

