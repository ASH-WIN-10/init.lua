return {
    -- autopairs
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },

    -- copilot
    {
        "github/copilot.vim",
        config = function()
            vim.keymap.set("i", "<C-L>", 'copilot#Accept("\\<CR>")', {
                expr = true,
                silent = true,
                replace_keycodes = false,
            })
            vim.g.copilot_no_tab_map = true
        end,
    },

    -- undotree
    {
        "mbbill/undotree",
        config = function()
            vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
        end,
    },

    --code screenshot
    {
        "mistricky/codesnap.nvim",
        build = "make",
        opts = {
            save_path = "~/Pictures/CodeSnap/",
            watermark = "",
            bg_x_padding = 80,
            bg_y_padding = 60,
            bg_theme = "grape",
        },
    },
}
