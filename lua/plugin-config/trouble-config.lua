local M = {}
function M.config()
    require('trouble').setup {
        action_keys = {
            hover = "T"
        }
    }
end

return M
