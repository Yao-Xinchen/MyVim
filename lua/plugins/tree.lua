return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        {
            "<leader>fE",
            function()
                require("neo-tree.command").execute({ toggle = true, dir = LazyVim.root() })
            end,
            desc = "Explorer NeoTree (Root Dir)",
        },
        {
            "<leader>fe",
            function()
                require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
            end,
            desc = "Explorer NeoTree (cwd)",
        },
        { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (Root Dir)", remap = true },
        { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)",      remap = true },
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = false,
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
        window = {
            width = 30, -- Set the width of the neo-tree panel (in columns)
            mappings = {
                ["<tab>"] = {
                    "toggle_preview",
                    config = {
                        use_float = true,
                        use_image_nvim = true,
                    },
                },
                ["P"] = "none",
            }
        },
    },
}
