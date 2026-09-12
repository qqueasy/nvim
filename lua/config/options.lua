local opt = vim.opt

-- Numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4

-- Indentation
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true

-- UI
opt.termguicolors = true
opt.cursorline = true
opt.signcolumn = "no"
opt.laststatus = 3
opt.showmode = false
opt.showcmd = false
opt.ruler = false

-- Editing
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.ttyfast = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Wrapping
opt.wrap = false

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }

-- Faster updates
opt.updatetime = 250
opt.timeoutlen = 500
