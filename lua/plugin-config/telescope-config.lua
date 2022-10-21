local M = {}

function M.config()
    local telescope = require('telescope')
    local map = vim.api.nvim_set_keymap
    local opt = {noremap = true, silent = true}

    telescope.setup {
        defaults = {
            prompt_prefix = "❯ ",
            selection_caret = "❯ ",
        },
        extensions = {
            fzf = {
                fuzzy = true,                    -- false will only do exact matching
                override_generic_sorter = true,  -- override the generic sorter
                override_file_sorter = true,     -- override the file sorter
                case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                -- the default case_mode is "smart_case"
            },
            file_browser = {
                prompt_title = " File Browser",
                -- path_display = { "smart" },
                theme = "ivy",
                -- path = "%:p:h"
                cwd_to_path = true
            },
            media_files = {
                find_cmd = "rg"
            }
        }
    }

    telescope.load_extension('fzf')
    telescope.load_extension('file_browser')
    telescope.load_extension('aerial')
    telescope.load_extension('media_files')
    telescope.load_extension('projects')
    telescope.load_extension('bibtex')

    -- <leader>f prefix for Telescope
    map("n", "<leader>fo", "<cmd>Telescope file_browser<cr>", opt)
    map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opt)
    map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opt)
    map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opt)
    map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opt)
    map("n", "<leader>fm", "<cmd>Telescope man_pages<cr>", opt)
    map("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", opt)
    map("n", "<leader>fs", "<cmd>Telescope symbols<cr>", opt)
    map("n", "<leader>fc", "<cmd>Telescope command_history<cr>", opt)
    map("n", "<leader>fa", "<cmd>Telescope aerial<cr>", opt)
    map("n", "<leader>ft", "<cmd>Telescope lsp_code_actions<cr>", opt)
    map("n", "<leader>fe", "<cmd>Telescope media_files<cr>", opt)
    map("n", "<leader>fx", "<cmd>Telescope bibtex<cr>", opt)
    map("n", "<leader>fp", "<cmd>Telescope projects<cr>", opt)
end

return M
