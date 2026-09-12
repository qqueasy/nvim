local lint = require("lint")

lint.linters_by_ft = {
    c = { "clangtidy" },
    cpp = { "clangtidy" },

    javascript = { "eslint_d" },
    javascriptreact = { "eslint_d" },
    typescript = { "eslint_d" },
    typescriptreact = { "eslint_d" },

    html = { "htmlhint" },
    css = { "stylelint" },
}
