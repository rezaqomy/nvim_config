return {
  "catppuccin/nvim",
  name = "catppuccin",
  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = false,
      integrations = { 
        cmp = true, 
        lsp_trouble = true, 
        gitsigns = true,
      },
    })
    vim.cmd([[colorscheme catppuccin]])
  end,
}
