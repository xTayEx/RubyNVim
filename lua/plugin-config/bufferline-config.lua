local M = {}

function M.config()
    vim.opt.termguicolors = true
    require("bufferline").setup {
        options = {
            offsets = {{ filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "center"}},
            numbers = function(opts)
                return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
            end,
        }
    }
end

return M
