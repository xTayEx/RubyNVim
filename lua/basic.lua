vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

vim.wo.number = true
-- vim.wo.relativenumber = true

vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.incsearch = true

vim.o.cmdheight = 1

vim.o.autoread = true
vim.bo.autoread = true

vim.o.mouse = "a"

vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

vim.o.splitbelow = true
vim.o.splitright = true

vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.o.background = "dark"
vim.o.termguicolors = true

vim.o.showtabline = 2

vim.o.pumheight = 10
vim.o.pumwidth = 30
vim.o.shell = 'zsh'

vim.cmd('syntax on')
vim.cmd("let g:gitblame_ignored_filetypes = ['NvimTree', 'packer', 'startuptime', 'lsp-installer', 'lspinfo', 'help', 'Trouble', 'toggleterm']")
vim.cmd("let g:indent_blankline_filetype_exclude = ['lsp-installer', 'lspinfo', 'packer', 'help', 'Trouble', 'toggleterm', 'terminal']")
vim.cmd("let g:asyncrun_open = 6")
vim.cmd [[
autocmd InsertLeave * :silent !fcitx5-remote -c
autocmd BufCreate * :silent !fcitx5-remote -c
autocmd BufEnter * :silent !fcitx5-remote -c
autocmd BufLeave * :silent !fcitx5-remote -c
]]

