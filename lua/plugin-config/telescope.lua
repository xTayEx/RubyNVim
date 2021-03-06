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
            path_display = { "smart" },
            cwd = "~",
        }
    }
}

telescope.load_extension('fzf')
telescope.load_extension('file_browser')
telescope.load_extension('coc')
telescope.load_extension('aerial')

-- <leader>f prefix for Telescope
map("n", "<leader>fo", ":Telescope file_browser<cr>", opt)
map("n", "<leader>ff", ":Telescope find_files<cr>", opt)
map("n", "<leader>fg", ":Telescope live_grep<cr>", opt)
map("n", "<leader>fb", ":Telescope buffers<cr>", opt)
map("n", "<leader>fh", ":Telescope help_tags<cr>", opt)
map("n", "<leader>fm", ":Telescope man_pages<cr>", opt)
map("n", "<leader>fq", ":Telescope quickfix<cr>", opt)
map("n", "<leader>fs", ":Telescope symbols<cr>", opt)
map("n", "<leader>fp", ":Telescope planets<cr>", opt)
map("n", "<leader>fc", ":Telescope command_history<cr>", opt)
map("n", "<leader>fa", ":Telescope aerial<cr>", opt)
map("n", "<leader>ft", ":Telescope lsp_code_actions<cr>", opt)
