local M = {}

function M.config()
    vim.opt.signcolumn = 'yes'
    local lsp_zero = require('lsp-zero')

    lsp_zero.preset({
      name = 'minimal',
      set_lsp_keymaps = false,
      manage_nvim_lsp = true,
      suggest_lsp_servers = true,
    })
    lsp_zero.nvim_workspace()
    lsp_zero.setup()

    lsp_zero.on_attach(function(client, bufnr)
        local map = function(mode, lhs, rhs)
            local opts = {remap = false, buffer = bufnr}
            vim.keymap.set(mode, lhs, rhs, opts)
        end

        -- LSP actions
        map('n', 'dT', '<cmd>lua vim.lsp.buf.hover()<cr>')
        map('n', '<C-T>', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
        map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
        map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
        map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
        map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>')
        map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')
        map('n', '<F2>', '<cmd>lua vim.lsp.buf.rename()<cr>')
        map('n', '<F4>', '<cmd>lua vim.lsp.buf.code_action()<cr>')
        map('x', '<F4>', '<cmd>lua vim.lsp.buf.range_code_action()<cr>')

        -- Diagnostics
        map('n', 'gl', '<cmd>lua vim.diagnostic.open_float()<cr>')
        map('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<cr>')
        map('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<cr>')
    end)
    -- lsp.configure('pyright', {
    --     on_attach = function (client, bufnr)
    --         client.configs.setttings.python.pythonPath = get_python_env_path(client.configs.root_dir)
    --     end
    -- })

    local cmp = require('cmp')

    local lspkind = require('lspkind')
    cmp.setup {
        window= {
            documentation = cmp.config.window.bordered(),
        },
        formatting = {
            format = lspkind.cmp_format({
                mode = 'symbol', -- show only symbol annotations
                maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)

                -- The function below will be called before any actual modifications from lspkind
                -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
                symbol_map = {
                    Text = '  ',
                    Method = '  ',
                    Function = '  ',
                    Constructor = '  ',
                    Field = '  ',
                    Variable = '  ',
                    Class = '  ',
                    Interface = '  ',
                    Module = '  ',
                    Property = '  ',
                    Unit = '  ',
                    Value = '  ',
                    Enum = '  ',
                    Keyword = '  ',
                    Snippet = '  ',
                    Color = '  ',
                    File = '  ',
                    Reference = '  ',
                    Folder = '  ',
                    EnumMember = '  ',
                    Constant = '  ',
                    Struct = '  ',
                    Event = '  ',
                    Operator = '  ',
                    TypeParameter = '  ',
                },
                before = function (entry, vim_item)
                    return vim_item
                end
            })
        }
    }

end

return M
