local M = {}

function M.config()
    vim.opt.termguicolors = true
    require("bufferline").setup {
        options = {
            offsets = {
                { filetype = "NvimTree", text = "File Explorer", highlight = "Directory", text_align = "center"},
                { filetype = "aerial", text = "Tagbar", highlight = "Directory", text_align = "center" }
            },
            numbers = function(opts)
                return string.format('%s·%s', opts.raise(opts.id), opts.lower(opts.ordinal))
            end,
            buffer_close_icon = '',
            modified_icon = '',
            close_icon = '',
            indicator = {
                icon = '▎',
                style = 'icon'

            }
        }
    }
end

return M
