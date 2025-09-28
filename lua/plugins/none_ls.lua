return {
    "nvimtools/none-ls.nvim",
    dependencies = { "nvimtools/none-ls-extras.nvim", "nvim-lua/plenary.nvim" },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                -- JS/TS
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.diagnostics.eslint,

                -- C++
                null_ls.builtins.formatting.clang_format,

                -- Python
                null_ls.builtins.formatting.black,
                null_ls.builtins.diagnostics.ruff,
                null_ls.builtins.diagnostics.mypy,
                require("none-ls.diagnostics.ruff"),

                -- Lua
                null_ls.builtins.formatting.stylua,
            },

            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end,
        })

        -- keymap (must be inside config function, not outside `return`)
        vim.keymap.set("n", "<leader>fml", function()
            vim.lsp.buf.format({ async = true })
        end, { desc = "Format file" })
    end,
}

