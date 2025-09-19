return function () 
    local map = vim.keymap.set


    -- Top Pickers & Explorer
    map("n", "<leader><space>", function() require('snacks').picker.smart() end, { desc = "Smart Find Files" })
    map("n", "<leader>,", function() require('snacks').picker.buffers() end, { desc = "Buffers" })
    map("n", "<leader>/", function() require('snacks').picker.grep() end, { desc = "Grep" })
    map("n", "<leader>:", function() require('snacks').picker.command_history() end, { desc = "Command History" })
    map("n", "<leader>nh", function() require('snacks').picker.notifications() end, { desc = "Notification History" })
    map("n", "<leader>e", function() require('snacks').explorer() end, { desc = "File Explorer" })


    -- Profiler Scratch Buffer
    map("n", "<leader>ps", function() require('snacks').profiler.scratch() end, { desc = "Profiler Scratch Buffer" })

    -- LazyGit Log
    map("n", "<leader>lg", function() require('snacks').lazygit.log() end, { desc = "LazyGit Log" })



    -- Top Pickers & Explorer
    map("n", "<leader>fb", function() require('snacks').picker.buffers() end, { desc = "Buffers" })
    map("n", "<leader>fc", function() require('snacks').picker.files({ cwd = vim.fn.stdpath("config") }) end, { desc = "Find Config File" })
    map("n", "<leader>fF", function() require('snacks').picker.files() end, { desc = "Find Files" })
    map("n", "<leader>fg", function() require('snacks').picker.git_files() end, { desc = "Find Git Files" })
    map("n", "<leader>fp", function() require('snacks').picker.projects() end, { desc = "Projects" })
    map("n", "<leader>fr", function() require('snacks').picker.recent() end, { desc = "Recent" })

    -- Git
    map("n", "<leader>gb", function() require('snacks').picker.git_branches() end, { desc = "Git Branches" })
    map("n", "<leader>gl", function() require('snacks').picker.git_log() end, { desc = "Git Log" })
    map("n", "<leader>gL", function() require('snacks').picker.git_log_line() end, { desc = "Git Log Line" })
    map("n", "<leader>gs", function() require('snacks').picker.git_status() end, { desc = "Git Status" })
    map("n", "<leader>gS", function() require('snacks').picker.git_stash() end, { desc = "Git Stash" })
    map("n", "<leader>gd", function() require('snacks').picker.git_diff() end, { desc = "Git Diff (Hunks)" })
    map("n", "<leader>gf", function() require('snacks').picker.git_log_file() end, { desc = "Git Log File" })

    -- Grep
    map("n", "<leader>sb", function() require('snacks').picker.lines() end, { desc = "Buffer Lines" })
    map("n", "<leader>sB", function() require('snacks').picker.grep_buffers() end, { desc = "Grep Open Buffers" })
    map("n", "<leader>sg", function() require('snacks').picker.grep() end, { desc = "Grep" })
    map("n", "<leader>sw", function() require('snacks').picker.grep_word() end, { desc = "Visual selection or word" })

    -- Search
    map("n", "<leader>s\"", function() require('snacks').picker.registers() end, { desc = "Registers" })
    map("n", "<leader>s/", function() require('snacks').picker.search_history() end, { desc = "Search History" })
    map("n", "<leader>sa", function() require('snacks').picker.autocmds() end, { desc = "Autocmds" })
    map("n", "<leader>sb", function() require('snacks').picker.lines() end, { desc = "Buffer Lines" })
    map("n", "<leader>sc", function() require('snacks').picker.command_history() end, { desc = "Command History" })
    map("n", "<leader>sC", function() require('snacks').picker.commands() end, { desc = "Commands" })
    map("n", "<leader>sd", function() require('snacks').picker.diagnostics() end, { desc = "Diagnostics" })
    map("n", "<leader>sD", function() require('snacks').picker.diagnostics_buffer() end, { desc = "Buffer Diagnostics" })
    map("n", "<leader>sh", function() require('snacks').picker.help() end, { desc = "Help Pages" })
    map("n", "<leader>sH", function() require('snacks').picker.highlights() end, { desc = "Highlights" })
    map("n", "<leader>si", function() require('snacks').picker.icons() end, { desc = "Icons" })
    map("n", "<leader>sj", function() require('snacks').picker.jumps() end, { desc = "Jumps" })
    map("n", "<leader>sk", function() require('snacks').picker.keymaps() end, { desc = "Keymaps" })
    map("n", "<leader>sl", function() require('snacks').picker.loclist() end, { desc = "Location List" })
    map("n", "<leader>sm", function() require('snacks').picker.marks() end, { desc = "Marks" })
    map("n", "<leader>sM", function() require('snacks').picker.man() end, { desc = "Man Pages" })
    map("n", "<leader>sp", function() require('snacks').picker.lazy() end, { desc = "Search for Plugin Spec" })
    map("n", "<leader>sq", function() require('snacks').picker.qflist() end, { desc = "Quickfix List" })
    map("n", "<leader>sR", function() require('snacks').picker.resume() end, { desc = "Resume" })
    map("n", "<leader>su", function() require('snacks').picker.undo() end, { desc = "Undo History" })
    map("n", "<leader>uC", function() require('snacks').picker.colorschemes() end, { desc = "Colorschemes" })

    -- LSP
    map("n", "gd", function() require('snacks').picker.lsp_definitions() end, { desc = "Goto Definition" })
    map("n", "gD", function() require('snacks').picker.lsp_declarations() end, { desc = "Goto Declaration" })
    map("n", "gr", function() require('snacks').picker.lsp_references() end, { nowait = true, desc = "References" })
    map("n", "gI", function() require('snacks').picker.lsp_implementations() end, { desc = "Goto Implementation" })
    map("n", "gy", function() require('snacks').picker.lsp_type_definitions() end, { desc = "Goto Type Definition" })
    map("n", "<leader>ss", function() require('snacks').picker.lsp_symbols() end, { desc = "LSP Symbols" })
    map("n", "<leader>sS", function() require('snacks').picker.lsp_workspace_symbols() end, { desc = "LSP Workspace Symbols" })

    -- Other
    map("n", "<leader>z", function() require('snacks').zen() end, { desc = "Toggle Zen Mode" })
    map("n", "<leader>Z", function() require('snacks').zen.zoom() end, { desc = "Toggle Zoom" })
    map("n", "<leader>.", function() require('snacks').scratch() end, { desc = "Toggle Scratch Buffer" })
    map("n", "<leader>S", function() require('snacks').scratch.select() end, { desc = "Select Scratch Buffer" })
    map("n", "<leader>n", function() require('snacks').notifier.show_history() end, { desc = "Notification History" })
    map("n", "<leader>bd", function() require('snacks').bufdelete() end, { desc = "Delete Buffer" })
    map("n", "<leader>cR", function() require('snacks').rename.rename_file() end, { desc = "Rename File" })
    map("n", "<leader>gB", function() require('snacks').gitbrowse() end, { desc = "Git Browse" })
    map("n", "<leader>gg", function() require('snacks').lazygit() end, { desc = "Lazygit" })
    map("n", "<leader>un", function() require('snacks').notifier.hide() end, { desc = "Dismiss All Notifications" })
    map("n", "<c-/>", function() require('snacks').terminal() end, { desc = "Toggle Terminal" })
    map("n", "<c-_>", function() require('snacks').terminal() end, { desc = "which_key_ignore" })
    map("n", "]]", function() require('snacks').words.jump(vim.v.count1) end, { desc = "Next Reference" })
    map("n", "[[", function() require('snacks').words.jump(-vim.v.count1) end, { desc = "Prev Reference" })
    map("n", "<leader>N", function()
        require('snacks').win({
            file = vim.api.nvim_get_runtime_file("doc/news.txt", false)[1],
            width = 0.6,
            height = 0.6,
            wo = {
                spell = false,
                wrap = false,
                signcolumn = "yes",
                statuscolumn = " ",
                conceallevel = 3,
            },
        })
    end, { desc = "Neovim News" })



    map("n", "<leader>pr", function() require('snacks').startup() end, {desc = "profiler"})
end 
