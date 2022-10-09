local M = {}
function M.config()
    vim.opt.list = true
    vim.opt.listchars:append("space:⋅")
end

return M
