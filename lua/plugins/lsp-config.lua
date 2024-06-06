return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    "lua_ls",
                    "tsserver",
                    "rust_analyzer",
                }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({ capabilities = capabilities })
            lspconfig.tsserver.setup({ capabilities = capabilities })
            lspconfig.rust_analyzer.setup({ capabilities = capabilities })
            lspconfig.ocamllsp.setup({
                capabilities = capabilities,
                on_attach = function()
                    print("Hello World")
                end
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover)
            vim.keymap.set('n', 'gl', vim.diagnostic.open_float)

            vim.keymap.set('n', 'gd', vim.lsp.buf.definition)
            vim.keymap.set('n', 'go', vim.lsp.buf.type_definition)
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation)
            vim.keymap.set('n', 'gr', vim.lsp.buf.references)

            vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action)
            vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename)
        end
    }
}
