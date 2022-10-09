local M = {}

function M.config()
    local Terminal = require('toggleterm.terminal').Terminal

    require('toggleterm').setup {
        size = function (term)
            if term.direction == "horizontal" then
                return 15
            elseif term.direction == "vertical" then
                return 100
            end
        end,
        open_mapping = [[<leader>ta]],
        hide_numbers = true,
        direction = 'vertical',
        shade_terminals = false
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
        cmd = "/home/xtyaex/.config/nvim/util/so_launcher.sh",
        direction = "float",
        float_opts = {
            border = "curved"
        }
    })

    function _sof_toggle()
        sof:toggle()
    end

    local elinks = Terminal:new({
        cmd = "elinks",
        direction = "tab"
    })

    function _elinks_toggle()
        elinks:toggle()
    end

    local ipython = Terminal:new({
        cmd = "ipython",
        direction = "vertical",
    })

    function _ipython_toggle()
        ipython:toggle()
    end

    local map = vim.api.nvim_set_keymap
    local opt = {noremap = true, silent = true}
    -- <leader>t prefix for toggleterm
    map("n", "<leader>tg", ":lua _lazygit_toggle()<cr>", opt)
    map("n", "<leader>tt", ":lua _htop_toggle()<cr>", opt)
    map("n", "<leader>ts", ":lua _termscp_toggle()<cr>", opt)
    map("n", "<leader>to", ":lua _sof_toggle()<cr>", opt)
    map("n", "<leader>te", ":lua _elinks_toggle()<cr>", opt)
    map("n", "<leader>tp", ":lua _ipython_toggle()<cr>", opt)
end

return M
