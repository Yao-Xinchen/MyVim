return {
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- Enable filetype plugins and indentation
            vim.cmd("filetype plugin indent on")

            -- Ensure the server is started if using +clientserver
            if vim.fn.exists("*remote_startserver") == 1 and vim.v.servername == "" then
                vim.fn.remote_startserver("VIM")
            end

            -- VimTeX viewer configuration
            vim.g.vimtex_view_forward_search_on_start = 1
            vim.g.vimtex_view_enabled = 1
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_view_general_viewer = "okular"
            vim.g.vimtex_view_general_options = "--unique file:@pdf#src:@line@tex"

            -- VimTeX compiler configuration
            vim.g.vimtex_compiler_method = "latexmk"
            vim.g.vimtex_compiler_latexmk = {
                aux_dir = "",
                out_dir = "",
                callback = 1,
                continuous = 1,
                executable = "latexmk",
                hooks = {},
                options = {
                    "-verbose",
                    "-file-line-error",
                    "-synctex=1",
                    "-interaction=nonstopmode",
                    "-shell-escape",
                },
            }

            -- Custom Zathura integration
            vim.g.vimtex_compiler_progname = "nvr"

            vim.api.nvim_exec(
                [[
                function! OpenZathura()
                    let position = line('.') . ":" . col('.') . ":" . expand('%:p') . " "
                    call jobstart("zathura -x 'nvr --remote +%{line} %{input}' --synctex-forward " . position . " " . substitute(expand('%:p'),"tex$","pdf", ""))
                endfunction

                map <leader><lv> :call OpenZathura()<CR>
            ]],
                false
            )

            -- Auto commands for LaTeX files
            vim.api.nvim_exec(
                [[
                augroup latex
                    autocmd! BufWritePost,BufReadPre *.tex silent !compiler %
                augroup end
            ]],
                false
            )

            -- Local leader customization (optional)
            -- vim.g.maplocalleader = " "
        end,
    },
}
