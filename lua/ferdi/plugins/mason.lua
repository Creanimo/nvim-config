local M = {
	'williamboman/mason.nvim',
	dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'nvim-lua/plenary.nvim',
        'neovim/nvim-lspconfig',
	},
}

M.servers = {
	"lua_ls",
    "pylsp",
    "pyright",
    "phpactor",
    "html",
    "biome",
    "ts_ls",
}

function M.config()

	local lsp = require("lsp-zero")
	lsp.preset("recommended")

	require("lsp-zero").setup()
	require("mason").setup()


	require("mason-lspconfig").setup {
      ensure_installed = M.servers,
      automatic_installation = true,
	}

end

return M
