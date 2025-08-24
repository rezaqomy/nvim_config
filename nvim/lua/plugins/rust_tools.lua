return {
    "simrat39/rust-tools.nvim",
    dependencies = {
        "neovim/nvim-lspconfig",
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    ft = { "rust" },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup {
            ensure_installed = { "rust_analyzer" },
        }

        local rt = require "rust-tools"

        rt.setup {
            tools = {
                autoSetHints = true,
                hover_actions = {
                    auto_focus = true,
                },
            },
            server = {
                on_attach = function(_, bufnr)
                    local bufmap = function(mode, lhs, rhs)
                        vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, noremap = true, silent = true })
                    end

                    bufmap("n", "<leader>ca", rt.code_action_group.code_action_group)
                    bufmap("n", "K", rt.hover_actions.hover_actions)
                end,
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                        checkOnSave = {
                            command = "clippy",
                        },
                    },
                },
            },
        }
    end,
}
