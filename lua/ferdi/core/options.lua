vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

-- OS
opt.clipboard:append("unnamedplus")

-- spellcheck
opt.spell = true
opt.spelllang = { 'de', 'en' }

-- Disable spell checking in terminal buffers
vim.api.nvim_create_autocmd("TermOpen", {
    pattern = "term://*",
    command = "setlocal nospell"
})

-- Disable spell checking in file tree buffers
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "nerdtree", "NvimTree" },
    command = "setlocal nospell"
})

-- view
opt.wrap = false
opt.cursorline = true
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.splitright = true
opt.splitbelow = true

-- typing
opt.backspace = "indent,eol,start" -- allow backspace on those positions

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true -- expands tabs to spaces
opt.autoindent = true

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- allow local setting overrides with .nvim.lua in a project folder
vim.o.exrc = true
