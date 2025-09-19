return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = true
        },
        { "nvim-telescope/telescope-file-browser.nvim", enabled = true }
    },
    branch = "0.1.x",
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                sorting_strategy = "ascending",
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist
                    }
                }
            },
            extensions = {
                file_browser = {
                    path = "%:p:h",
                    display_stat = false,
                    grouped = true,
                    hidden = true,
                    hide_parent_dir = true,
                    hijack_netrw = true,
                    prompt_path = true,
                    use_fd = true
                }
            }
        })

        telescope.load_extension("fzf")
        telescope.load_extension("file_browser")

        local builtin = require("telescope.builtin")

        local map = vim.keymap.set
        local opts = { noremap = true, silent = true }

        map("n", "-", ":Telescope file_browser<CR>", opts)
        map("n", "<leader>ff", builtin.find_files, opts)
        map("n", "<leader>fx", builtin.treesitter, opts)
        map("n", "<leader>fs", builtin.spell_suggest, opts)
        map("n", "<leader>fw", builtin.live_grep, { desc = "Live Grep" })

        map("n", "gd", function() require('snacks').picker.lsp_definitions() end, { desc = "Goto Definition" })
        map("n", "gD", function() require('snacks').picker.lsp_declarations() end, { desc = "Goto Declaration" })
        map("n", "gr", function() require('snacks').picker.lsp_references() end, { nowait = true, desc = "References" })
        map("n", "gI", function() require('snacks').picker.lsp_implementations() end, { desc = "Goto Implementation" })
        map("n", "gy", function() require('snacks').picker.lsp_type_definitions() end, { desc = "Goto Type Definition" })
        map("n", "<leader>ss", function() require('snacks').picker.lsp_symbols() end, { desc = "LSP Symbols" })
        map("n", "<leader>sS", function() require('snacks').picker.lsp_workspace_symbols() end, { desc = "LSP Workspace Symbols" })
    end
}
