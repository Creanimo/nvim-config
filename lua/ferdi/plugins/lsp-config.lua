return {
    'neovim/nvim-lspconfig',
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.biome.setup({
            root_dir = lspconfig.util.root_pattern("biome.json", "package.json", ".git"),
        })
    end
}

