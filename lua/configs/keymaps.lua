local map = vim.keymap.set


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")


vim.api.nvim_set_keymap("i", "<C-j>", 'copilot#Accept("<CR>")', { expr = true, silent = true })


map("i", "<c-u>", "<Esc>ddi")

-- Turn the current word into title case
map("i", "<c-t>", "<Esc>b~lea")


-- Paste non-linewise text above or below current line, see https://stackoverflow.com/a/1346777/6064933
map("n", "<leader>p", "m`o<ESC>p``", { desc = "paste below current line" })
map("n", "<leader>P", "m`O<ESC>p``", { desc = "paste above current line" })



-- Shortcut for faster save and quit
map("n", "<leader>w", "<cmd>update<cr>", { silent = true, desc = "save buffer" })

-- Saves the file if modified and quit
map("n", "<leader>q", "<cmd>x<cr>", { silent = true, desc = "quit current window" })

-- Quit all opened buffers
map("n", "<leader>Q", "<cmd>qa!<cr>", { silent = true, desc = "quit nvim" })


map("n", "<leader>c\"", 'ciw"<C-r>""<Esc>', { noremap = true, silent = true })
map("n", "<leader>c'",  "ciw'<C-r>\"'<Esc>", { noremap = true, silent = true })
map("n", "<leader>c(",  "ciw(<C-r>\")<Esc>", { noremap = true, silent = true })
map("n", "<leader>c{",  "ciw{<C-r>\"}<Esc>", { noremap = true, silent = true })
map("n", "<leader>c[",  "ciw[<C-r>\"]<Esc>", { noremap = true, silent = true })
map("v", "<leader>c\"", 'c"<C-r>\""<Esc>', { noremap = true, silent = true })
map("v", "<leader>c'",  "c'<C-r>\"'<Esc>", { noremap = true, silent = true })
map("v", "<leader>c(",  "c(<C-r>\")<Esc>", { noremap = true, silent = true })
map("v", "<leader>c{",  "c{<C-r>\"}<Esc>", { noremap = true, silent = true })
map("v", "<leader>c[",  "c[<C-r>\"]<Esc>", { noremap = true, silent = true })


-- Go to the beginning and end of current line in insert mode quickly
map("i", "<C-A>", "<HOME>")
map("i", "<C-E>", "<END>")



local opts = { noremap = true, silent = true }

map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

