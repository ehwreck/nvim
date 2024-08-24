return {
    "tpope/vim-fugitive",
    config = function()
        -- Key mapping for Git status
        vim.keymap.set("n", "<leader>gs", ":Git<CR>")

        -- Autocommands group
        local ErickTrevino_Fugitive = vim.api.nvim_create_augroup("ErickTrevino_Fugitive", {})

        -- BufWinEnter autocommand
        vim.api.nvim_create_autocmd("BufWinEnter", {
            group = ErickTrevino_Fugitive,
            pattern = "*",
            callback = function()
                if vim.bo.filetype ~= "fugitive" then
                    return
                end

                local bufnr = vim.api.nvim_get_current_buf()
                local opts = { buffer = bufnr, remap = false }

                -- Git push
                vim.keymap.set("n", "<leader>p", function()
                    vim.cmd.Git('push')
                end, opts)

                -- Git pull with rebase
                vim.keymap.set("n", "<leader>P", function()
                    vim.cmd.Git({ 'pull', '--rebase' })
                end, opts)

                -- Git push with tracking branch
                vim.keymap.set("n", "<leader>t", ":Git push -u origin ", opts)
            end,
        })

        -- Diffget key mappings
        vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
        vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
    end
}

