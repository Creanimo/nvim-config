return {
    "uga-rosa/ccc.nvim",
    config = function()
        -- Enable true color
        vim.opt.termguicolors = true

        local ccc = require("ccc")
        local mapping = ccc.mapping

        local keymap = vim.keymap -- for conciseness

        keymap.set("n", "<leader>p", "<cmd>:CccPick<CR>", { desc = "Display color picker" })

        ccc.setup({
            highlighter = {
                auto_enable = true,
                lsp = true,
            },
        })
    end
}
