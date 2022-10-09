local M = {}

function M.config()
    vim.cmd([[
        let g:neoformat_run_all_formatters = 1
        let g:neoformat_enabled_python = ['autopep8', 'isort', 'docformatter']
    ]])
end

return M
