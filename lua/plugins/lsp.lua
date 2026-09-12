local capabilities = require("cmp_nvim_lsp").default_capabilities()

local function on_attach(client, bufnr)
    local map = vim.keymap.set

    map("n", "gd", vim.lsp.buf.definition, {
        buffer = bufnr,
        desc = "Go to definition",
    })

    map("n", "gr", vim.lsp.buf.references, {
        buffer = bufnr,
        desc = "Find references",
    })

    map("n", "K", vim.lsp.buf.hover, {
        buffer = bufnr,
        desc = "Hover documentation",
    })

    map("n", "<leader>rn", vim.lsp.buf.rename, {
        buffer = bufnr,
        desc = "Rename symbol",
    })

    map("n", "<leader>ca", vim.lsp.buf.code_action, {
        buffer = bufnr,
        desc = "Code action",
    })
end

vim.lsp.config("clangd", {
    cmd = {
        "clangd",
        "--background-index",
        "--clang-tidy",
    },
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.config("html", {
    cmd = { "vscode-html-language-server", "--stdio" },
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.config("cssls", {
    cmd = { "vscode-css-language-server", "--stdio" },
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.config("ts_ls", {
    cmd = { "typescript-language-server", "--stdio" },
    on_attach = on_attach,
    capabilities = capabilities,
})

vim.lsp.enable({
    "clangd",
    "html",
    "cssls",
    "ts_ls",
})
