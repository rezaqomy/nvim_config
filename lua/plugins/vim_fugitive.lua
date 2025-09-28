return {
  {
    "tpope/vim-fugitive",
    cmd = {
      "Git",
      "G",
      "Gdiffsplit",
      "Gvdiffsplit",
      "Gwrite",
      "Gread",
      "Gstatus",
      "Gblame",
    },
    keys = {
      { "<leader>gs", ":Git<CR>", desc = "Git status" },
      { "<leader>gb", ":Git blame<CR>", desc = "Git blame" },
      { "<leader>gd", ":Gdiffsplit<CR>", desc = "Git diff" },
      { "<leader>gl", ":Git log<CR>", desc = "Git log" },
    },
  },
}
