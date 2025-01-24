-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local unmap = vim.keymap.del

-- delete buffer
map("n", "W", function()
    Snacks.bufdelete()
end, { desc = "Delete Buffer" })

-- terminal
map("n", "<c-`>", function()
    Snacks.terminal(nil, { cwd = LazyVim.root() })
end, { desc = "Terminal (cwd)" })

map("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })

unmap("n", "<C-/>")
unmap("t", "<C-/>")



-- format
map('n', '<C-M-l>', function()
    vim.lsp.buf.format({ async = true })
end, { noremap = true, silent = true })

-- indent
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', { noremap = true, silent = true })
