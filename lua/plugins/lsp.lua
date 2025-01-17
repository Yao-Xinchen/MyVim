return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                pyright = {}, -- Enable pyright
                matlab_ls = {},
            },
        },
    },

    {
        "blink.cmp",
        opts = {
            keymap = {
                ["<CR>"] = {},
                ["<Tab>"] = { "accept" },
            },
        },
    },
}
