return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },
        window = {
            width = 27, -- Set the width of the neo-tree panel (in columns)
        },
    },
}
