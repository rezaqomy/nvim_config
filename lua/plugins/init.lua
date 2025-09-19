local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = "plugins.snacks" },
    { import = "plugins.lsp_config" },
    { import = "plugins.none_ls" },
    { import = "plugins.mason" },
    { import = "plugins.mason_lsp_config" },
    { import = "plugins.nvim_cmp" },
    { import = "plugins.noice" },
    { import = "plugins.which_key" },
    { import = "plugins.todo_comments" },
    { import = "plugins.bufferline" },
    { import = "plugins.catppuccin" },
    { import = "plugins.rust" },
    { import = "plugins.rust_tools" },
    { import = "plugins.camel_case_motion" },
    { import = "plugins.copilot" },
    { import = "plugins.gitsigns" },
    -- { import = "plugins.leetcode" },
    { import = "plugins.nvim_dap" },
    { import = "plugins.replacer" },
    { import = "plugins.spectre" },
    { import = "plugins.surround" },
    { import = "plugins.trouble" },
    -- { import = "plugins.vim_tmux_navigator" },
    { import = "plugins.comment" },
    { import = "plugins.barbar" },
    { import = "plugins.lualine" },
    { import = "plugins.nvim_treesitter" },
    { import = "plugins.telescope" },
})




