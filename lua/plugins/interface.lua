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

            stiffness = 0.8,               -- 0.6      [0, 1]
            trailing_stiffness = 0.5,      -- 0.3      [0, 1]
            distance_stop_animating = 0.5, -- 0.1      > 0
            hide_target_hack = false,      -- true     boolean
        },
    }
}
