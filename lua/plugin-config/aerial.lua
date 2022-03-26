require("aerial").setup({
    max_width = { 60, 0.4 },
    width = 30,
    min_width = 10,
    default_bindings = true,
    show_guide = true,
    filter_kind = false,
    highlight_on_hover = true,
    guides = {
        -- When the child item has a sibling below it
        mid_item = "├─",
        -- When the child item is the last in the list
        last_item = "╰─",
        -- When there are nested child guides to the right
        nested_top = "│ ",
        -- Raw indentation
        whitespace = "  ",
    },
})

local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map("n", "<leader>aa", ":AerialToggle!<cr>", opt)
