local M = {}

function M.config()
    local mason = require('mason')
    mason.setup({
        ui = {
            icons = {
                package_installed = "✓ ",
                package_pending = "➜ ",
                package_uninstalled = "✗ "
            }
        }
    })
end

return M
