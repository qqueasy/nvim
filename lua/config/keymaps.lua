vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

-- Clear search highlighting
map("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlight" })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Move left" })
map("n", "<C-j>", "<C-w>j", { desc = "Move down" })
map("n", "<C-k>", "<C-w>k", { desc = "Move up" })
map("n", "<C-l>", "<C-w>l", { desc = "Move right" })

-- Resize windows
map("n", "<C-Up>", "<cmd>resize +2<cr>")
map("n", "<C-Down>", "<cmd>resize -2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>")

-- barbar
-- Move to previous/next
map('n', '<S-h>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<S-l>', '<Cmd>BufferNext<CR>', opts)

-- Re-order to previous/next
map('n', '<S-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<S->>', '<Cmd>BufferMoveNext<CR>', opts)

-- close current buffer
map("n", "<leader>q", ":BufferClose<CR>")

-- LSP
--map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
--map("n", "gr", vim.lsp.buf.references, { desc = "Find references" })
--map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
--map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
--map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
