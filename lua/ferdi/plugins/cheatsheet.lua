return {
    "sudormrfbin/cheatsheet.nvim",
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'nvim-lua/plenary.nvim',
        'neovim/nvim-lspconfig',
    },
    config = function()
        -- set keymaps
        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>?", "<cmd>Cheatsheet<CR>", { desc = "Display cheatsheet" })
    end
}
