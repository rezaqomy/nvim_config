return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
        ensure_installed = {
            "black",
            "rust-analyzer",
            "pyright",
            "clangd",
            "clang-format",
            "ltex-ls",
            "tsserver",
            "efm",
            "omnisharp",
            "gopls",
            "black"
        },

    },
    config = function()
        require("mason").setup()
    end,
}
