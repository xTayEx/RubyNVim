local M = {}

function M.config()
    local whichkey = require('which-key')
    whichkey.setup({
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
    })

    whichkey.register({
        ["<leader>"] = {
            t = {
                name = "toggleterm",
                a = {"Open a terminal"},
                g = {"<cmd>lua _lazygit_toggle()<cr>", "Open lazygit"},
                t = {"<cmd>lua _htop_toggle()<cr>", "Open htop"},
                s = {"<cmd>lua _termscp_toggle()<cr>", "Open termscp for transfer file"},
                o = {"<cmd>lua _sof_toggle()<cr>", "Search in StackExchange, DuckDuckGo or Google"},
                e = {"<cmd>lua _elinks_toggle()<cr>", "Open elinks"}
            }
        }
    })

    whichkey.register({
        ["<leader>"] = {
            a = {
                name = "Aerial",
                a = {"<cmd>AerialToggle!<cr>", "Toggle aerial window"}
            }
        }
    })

    whichkey.register({
        ["<leader>"] = {
            f = {
                name = "Telescope",
                f = {"<cmd>Telescope find_files<cr>", "Find project files"},
                r = {"<cmd>Telescope oldfiles<cr>", "Find recent files"},
                o = {"<cmd>Telescope file_browser<cr>", "Open file browser"},
                g = {"<cmd>Telescope live_grep<cr>", "Live grep"},
                h = {"<cmd>Telescope help_tags<cr>", "Search help tags"},
                b = {"<cmd>Telescope buffers<cr>", "Search buffers"},
                m = {"<cmd>Telescope man_pages<cr>", "Search man pages"},
                q = {"<cmd>Telescope quickfix<cr>", "Quickfix"},
                c = {"<cmd>Telescope command_history<cr>", "Recent command"},
                s = {"<cmd>Telescope symbols<cr>", "Search symbols(emoji, latex, kaomoji...etc.)"},
                a = {"<cmd>Telescope aerial<cr>", "Search aerial symbols"},
                t = {"<cmd>Telescope lsp_code_actions<cr>", "Code actions"},
                e = {"<cmd>Telescope media_files<cr>", "Media files"},
                x = {"<cmd>Telescope bibtex<cr>", "Bibtex"},
                p = {"<cmd>Telescope projects<cr>", "projects"},
                u = {"<cmd>Telescope resume<cr>", "Resume Telescope to previous state"},
                j = {"<cmd>Telescope jumplist<cr>", "Jumplist"}
            }
        }
    })

    whichkey.register({
        ["<leader>"] = {
            v = {
                name = "config",
                e = {"<cmd>e ~/.config/nvim/init.lua<cr>", "Edit init.lua"},
                s = {"<cmd>so ~/.config/nvim/init.lua<cr>", "Source init.lua"}
            }
        }
    })
end

return M
