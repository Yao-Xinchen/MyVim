return {
    {
        "lewis6991/satellite.nvim",
        config = function()
            require("satellite").setup()
        end,
    },

    -- {
    --     "kevinhwang91/nvim-ufo",
    --     dependencies = { "kevinhwang91/promise-async" },
    --     config = function()
    --         require("ufo").setup({
    --             provider_selector = function()
    --                 return { "treesitter", "indent" }
    --             end,
    --         })
    --     end,
    -- },

    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        config = function()
            require("treesitter-context").setup({
                enable = true,        -- Enable this plugin (can be disabled for large files)
                max_lines = 0,        -- How many lines to show for the context (0 means unlimited)
                trim_scope = "outer", -- Trim outer scope if the context size exceeds max_lines
                patterns = {          -- Match patterns for specific filetypes
                    default = {
                        "class",
                        "function",
                        "method",
                    },
                },
            })
        end,
    },

    {
        "sphamba/smear-cursor.nvim",
        opts = {
            legacy_computing_symbols_support = false,
        },
    }
}
