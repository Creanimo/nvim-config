return {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.somesass_ls.setup({
            filetypes = { "sass", "scss", "less", "css" },
        })
        --Enable (broadcasting) snippet capability for completion
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities.textDocument.completion.completionItem.snippetSupport = true

        lspconfig.cssls.setup {
            capabilities = capabilities,
        }

        lspconfig.biome.setup({
            root_dir = lspconfig.util.root_pattern("biome.json", "package.json", ".git"),
        })
    end
}
