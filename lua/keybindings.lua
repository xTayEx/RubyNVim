vim.cmd[[
    nnoremap <SPACE> <Nop>
    let mapleader = " " 
    let maplocalleader = " "
]]

local map = vim.api.nvim_set_keymap
local unmap = vim.api.nvim_del_keymap
local unmap_local = vim.api.nvim_buf_del_keymap
local opt = {noremap = true, silent = true}

map("n", "<leader>w", "<cmd>w<CR>", opt)
map("n", "<leader>q", "<cmd>q<CR>", opt)
map("n", "<leader>ve", "<cmd>e ~/.config/nvim/init.lua<cr>", opt)
map("n", "<leader>vs", "<cmd>so ~/.config/nvim/init.lua<cr>", opt)
map("n", "<C-]>", "<cmd>bn<cr>", opt)
map("n", "<C-[>", "<cmd>bp<cr>", opt)
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

map("n", "<F5>", "<cmd>AsyncTaskLast<cr>", opt)
map("n", "<F6>", "<cmd>lua require('renamer').rename()<cr>", opt)

map("n", "<leader>gd", "<cmd>Neogen<cr>", opt)

vim.cmd[[
noremap <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <expr> k (v:count == 0 ? 'gk' : 'k')
]]
