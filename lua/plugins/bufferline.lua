return {
    {
        "akinsho/bufferline.nvim",
        config = function()
            require("bufferline").setup({
                options = {
                    always_show_bufferline = true,
                    offsets = {
                        {
                            filetype = "neo-tree",
                            text = "NeoTree",
                            highlight = "Directory",
                            text_align = "left",
                        },
                    },
                },
            })
        end,
    },
}
