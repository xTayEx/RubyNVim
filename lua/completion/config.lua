local M = {}

function M.config()
    local lsp = require('lsp-zero')

    lsp.preset('recommended')
    lsp.setup()
    lsp.nvim_workspace()

    vim.diagnostic.config({
        virtual_text = {
            prefix = ' '
        }
    })

    local cmp = require'cmp'
    local devicons = require('nvim-web-devicons')
    cmp.register_source('devicons', {
        complete = function(self, params, callback)
            local items = {}
            for _, icon in pairs(devicons.get_icons()) do
                table.insert(items, {
                    label = icon.icon .. '  ' .. icon.name,
                    insertText = icon.icon,
                    filterText = icon.name,
            })
            end
            callback({ items = items })
        end,
    })

    local lspkind = require('lspkind')
    cmp.setup {
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
