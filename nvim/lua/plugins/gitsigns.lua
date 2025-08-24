return {
    "lewis6991/gitsigns.nvim",
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" },
            delete = { text = "_" },
        },
        on_attach = function(bufnr)
            local gs = package.loaded.gitsigns
            local map = function(mode, l, r, opts)
                opts = opts or {}
                opts.buffer = bufnr
                vim.keymap.set(mode, l, r, opts)
            end

            -- Navigation
            map("n", "]c", function()
                if vim.wo.diff then
                    return "]c"
                end
                vim.schedule(function()
                    gs.next_hunk()
                end)
                return "<Ignore>"
            end, { expr = true })

            map("n", "[c", function()
                if vim.wo.diff then
                    return "[c"
                end
                vim.schedule(function()
                    gs.prev_hunk()
                end)
                return "<Ignore>"
            end, { expr = true })

            -- Actions
            map("n", "<leader>hs", gs.stage_hunk)
            map("n", "<leader>hr", gs.reset_hunk)
            map("n", "<leader>hp", gs.preview_hunk)
            map("n", "<leader>hb", function()
                gs.blame_line { full = true }
            end)
        end,
    },
}
