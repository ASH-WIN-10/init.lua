return {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    keys = {
        {
            "<leader>cf",
            function()
                require("conform").format()
            end,
            mode = "",
            desc = "Format buffer",
        },
    },
    opts = {
        format_on_save = {
            timeout_ms = 500,
            lsp_format = "fallback",
        },
        formatters_by_ft = {
            lua = { "stylua" },
            javascript = { "prettierd" },
            typescript = { "prettierd" },
            javascriptreact = { "prettierd" },
            typescriptreact = { "prettierd" },
            json = { "prettierd" },
            html = { "prettierd" },
        },
    },
}
