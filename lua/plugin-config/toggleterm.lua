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

local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
    cmd = "lazygit",
    dir = '.',
    direction = "tab",
}) 

function _lazygit_toggle()
    lazygit:toggle()
end
