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

function _hop_toggle()
    htop:toggle()
end
