local M = {}
function M.config()
    require('marks').setup {
        default_mappings = true,
        signs = true,
        mappings = {}
    }
end

return M
