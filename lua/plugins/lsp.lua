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
                ['<Tab>'] = {
                    function(cmp)
                        if cmp.snippet_active() then
                            return cmp.accept()
                        else
                            return cmp.select_and_accept()
                        end
                    end,
                    'snippet_forward',
                    'fallback'
                },
                ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
            },
        },
    },
}
