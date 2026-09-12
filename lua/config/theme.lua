vim.o.background = "dark"

vim.cmd.colorscheme("gruvbox")

vim.cmd([[
    highlight Normal guibg=NONE ctermbg=NONE
    highlight NormalNC guibg=NONE ctermbg=NONE
    highlight StatusLine guibg=NONE ctermbg=NONE
    highlight StatusLineNC guibg=NONE ctermbg=NONE
]])

require("lualine").setup({
    options = {
        theme = "gruvbox",
        globalstatus = true,
    },
})

