return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        "nvim-tree/nvim-web-devicons",
    },
    lazy = false, -- neo-tree will lazily load itself
    keys = {
        { "\\", ":Neotree toggle<CR>", desc = "Toggle NeoTree", silent = true },
    },
    opts = {
        event_handlers = {
            {
                event = "file_open_requested",
                handler = function()
                    vim.cmd("Neotree toggle")
                end,
            },
        },
    },
}
