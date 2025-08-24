return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            -- Optional keybindings
            toggler = {
                line = "gcc",
                block = "gbc",
            },
            opleader = {
                line = "gc",
                block = "gb",
            },
        })
    end
}
