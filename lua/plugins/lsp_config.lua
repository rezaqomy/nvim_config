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

        lspconfig.tsserver.setup({})
    end,
}
