local Terminal = require('toggleterm.terminal').Terminal

require('toggleterm').setup {
    function (term)
        if term.direction == "horizontal" then
            return 15
        elseif term.direction == "vertical" then
            return 100
        end
    end,
    open_mapping = [[<A-=>]],
    hide_numbers = true,
    direction = 'tab'
}

-- lazygit

local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = '.',
    direction = "float",
    float_opts = {
        border = "curved",
    }
})

function _lazygit_toggle()
    lazygit:toggle()
end

-- htop
local htop = Terminal:new ({
    cmd = "htop",
    direction = "tab"
})

function _htop_toggle()
    htop:toggle()
end

local termscp = Terminal:new({
    cmd = "termscp",
    direction = "tab"
})

function _termscp_toggle()
    termscp:toggle()
end

local sof = Terminal:new({
    cmd = "/home/xtayex/.config/nvim/util/so_launcher.sh",
    direction = "float",
    float_opts = {
        border = "curved"
    }
})

function _sof_toggle()
    sof:toggle()
end

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}
-- <leader>g prefix for toggleterm
map("n", "<leader>gg", ":lua _lazygit_toggle()<cr>", opt)
map("n", "<leader>gt", ":lua _htop_toggle()<cr>", opt)
map("n", "<leader>gs", ":lua _termscp_toggle()<cr>", opt)
map("n", "<leader>go", ":lua _sof_toggle()<cr>", opt)
