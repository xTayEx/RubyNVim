local lsp = require('lsp-zero')

lsp.preset('recommended')
lsp.setup()

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
            before = function (entry, vim_item)
                return vim_item
            end
        })
    }
}

require'cmp'.setup.cmdline(':', {
    sources = {
        { name = 'cmdline' }
    }
})

require'cmp'.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})
