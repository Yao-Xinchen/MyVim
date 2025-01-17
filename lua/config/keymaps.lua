-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "W", function()
    Snacks.bufdelete()
end, { desc = "Delete Buffer" })

vim.keymap.set('n', '<C-M-l>', function()
    vim.lsp.buf.format({ async = true })
end, { noremap = true, silent = true })

vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
