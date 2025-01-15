-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.opt.winbar = "%=%m %f"

-- Set tab width to 4 spaces
vim.opt.tabstop = 4 -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4 -- Number of spaces for each indentation level
vim.opt.softtabstop = 4 -- Number of spaces for a <Tab> when editing
vim.opt.expandtab = true -- Convert tabs to spaces

vim.opt.relativenumber = false -- Disable relative line numbers
vim.opt.number = true -- Enable absolute line numbers

local bg_color = "#1e1e2e"
vim.api.nvim_set_hl(0, "BufferLineFill", { bg = bg_color }) -- Set the background
vim.api.nvim_set_hl(0, "TreesitterContext", { bg = bg_color })
