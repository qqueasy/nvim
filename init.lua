require("config.options")
require("config.keymaps")

local Plug = vim.fn["plug#"]

vim.call("plug#begin")

Plug("ellisonleao/gruvbox.nvim")
Plug("catppuccin/nvim")
Plug("uZer/pywal16.nvim")
Plug("nvim-lualine/lualine.nvim")

Plug("romgrk/barbar.nvim")
Plug("nvim-tree/nvim-web-devicons")

Plug("neovim/nvim-lspconfig")
Plug("mfussenegger/nvim-lint")

Plug("hrsh7th/nvim-cmp")
Plug("hrsh7th/cmp-nvim-lsp")
Plug("hrsh7th/cmp-buffer")
Plug("hrsh7th/cmp-path")
Plug("L3MON4D3/LuaSnip")
Plug("saadparwaiz1/cmp_luasnip")

Plug("nvim-treesitter/nvim-treesitter")
Plug("windwp/nvim-autopairs")
Plug("numToStr/Comment.nvim")

Plug("MeanderingProgrammer/render-markdown.nvim")
Plug("lewis6991/gitsigns.nvim")

vim.call("plug#end")

-- plugin configs
require("plugins.ui")
require("plugins.barbar")
require("plugins.lsp")
require("plugins.completion")
require("plugins.treesitter")
require("plugins.git")
require("plugins.render-markdown")

require("config.theme")
require("config.autocmds")

