return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        local lspconfig = require("lspconfig")

        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = { globals = { "vim" } },
                },
            },
        })

        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = { "pyright", "efm" },
        }

        lspconfig.pyright.setup({})


        -- define formatter(s) for efm
        local black = {
            formatCommand = "black --quiet -",
            formatStdin = true,
        }

        -- efm config
        lspconfig.efm.setup({
            init_options = { documentFormatting = true },
            filetypes = { "python" },
            settings = {
                rootMarkers = { ".git/" },
                languages = {
                    python = { black },
                },
            },
        })
        lspconfig.tsserver.setup({})
    end,
}
