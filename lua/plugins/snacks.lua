local OPTS = {
    bigfile = { enabled = true },
    dashboard = require("plugins.snacks_config.dashboard"),
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true },
    profiler = { enabled = true },
    gitbrowse = { enabled = true },
    image = { enabled = true },
    lazygit = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    toggle = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    dim = { enabled = true }
}

local config = function()
    local Snacks = require("snacks")
    require("plugins.snacks_config.mappings")()

    -- Snacks.dashboard.setup()
    -- Snacks.input.enable()
    -- Snacks.indent.enable()
    -- Snacks.scroll.enable()
    -- Snacks.words.enable()
    Snacks.init.setup(OPTS)
    Snacks.dim()
end




return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = OPTS,
    config = config
}
