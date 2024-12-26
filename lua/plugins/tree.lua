return {
    "nvim-neo-tree/neo-tree.nvim",
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
        },
    },
}
