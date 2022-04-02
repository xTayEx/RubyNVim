local whichkey = require('which-key')
whichkey.setup {
    plugins = {
        marks = true, -- shows a list of your marks on ' and `
        registers = true, -- shows your registers on " in normal or <c-r> in insert mode
        spelling = {
            enabled = true, -- enabling this will show whichkey when pressing z= to select spelling suggestions
            suggestions = 20, -- how many suggestions should be shown in the list?
        },
        -- the presets plugin, adds help for a bunch of default keybindings in neovim
        -- no actual key bindings are created
        presets = {
            operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
            motions = true, -- adds help for motions
            text_objects = true, -- help for text objects triggered after entering an operator
            windows = true, -- default bindings on <c-w>
            nav = true, -- misc bindings to work with windows
            z = true, -- bindings for folds, spelling and others prefixed with z
        }
    }
}

whichkey.register({
    ["<leader>"] = {
        g = {
            name = "toggleterm",
            g = {":lua _lazygit_toggle()<cr>", "Open lazygit"},
            t = {":lua _htop_toggle()<cr>", "Open htop"},
            s = {":lua _termscp_toggle()<cr>", "Open termscp for transfer file"},
            o = {":lua _sof_toggle()<cr>", "Search in StackExchange, DuckDuckGo or Google"},
            e = {":lua _elinks_toggle()<cr>", "Open elinks"}
        }
    }
})

whichkey.register({
    ["<leader>"] = {
        a = {
            name = "Aerial",
            a = {":AerialToggle!<cr>", "Toggle aerial window"}
        }
    }
})

whichkey.register({
    ["<leader>"] = {
        f = {
            name = "Telescope",
            f = {":Telescope find_files<cr>", "Find project files"},
            r = {":Telescope oldfiles<cr>", "Find recent files"},
            o = {":Telescope file_browser<cr>", "Open file browser"},
            g = {":Telescope live_grep<cr>", "Live grep"},
            h = {":Telescope help_tags<cr>", "Search help tags"},
            b = {":Telescope buffers<cr>", "Search buffers"},
            m = {":Telescope man_pages<cr>", "Search man pages"},
            p = {":Telescope planets<cr>", "Planet!"},
            q = {":Telescope quickfix<cr>", "Quickfix"},
            c = {":Telescope command_history<cr>", "Recent command"},
            s = {":Telescope symbols<cr>", "Search symbols(emoji, latex, kaomoji...etc.)"},
            a = {":Telescope aerial<cr>", "Search aerial symbols"},
            t = {":Telescope lsp_code_actions<cr>", "Code actions"}
        }
    }
})

whichkey.register({
    ["<leader>"] = {
        v = {
            name = "config",
            e = {":e ~/.config/nvim/init.lua<cr>", "Edit init.lua"},
            s = {":so ~/.config/nvim/init.lua<cr>", "Source init.lua"}
        }
    }
})
