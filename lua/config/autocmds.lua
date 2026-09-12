local lint = require("lint")

local group = vim.api.nvim_create_augroup("UserConfig", {})

vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.api.nvim_create_autocmd(
    { "BufEnter", "BufWritePost", "InsertLeave" },
    {
        group = group,
        callback = function()
            lint.try_lint()
        end,
    }
)

