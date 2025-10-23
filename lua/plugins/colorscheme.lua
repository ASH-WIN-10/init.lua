return {
    {
        name = "colorscheme",
		dir = vim.fn.stdpath("config"),
		lazy = false,
        config = function ()
            vim.cmd.colorscheme "catppuccin-mocha"
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        opts = {
            transparent_background = true,
        },
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            disable_background = true,
            styles = {
                italic = false,
            },
        },
    },
}
