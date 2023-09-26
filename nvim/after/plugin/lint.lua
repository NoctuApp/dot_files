require("lint").linters_by_ft = {
  javascript = { "eslint" },
  typescript = { "eslint" },
  python = { "flake8", "ruff" },
  php = { "phpcs" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

local phpcs = require("lint").linters.phpcs
phpcs.args = {
  "-q",
  -- <- Add a new parameter here
  "--report=json",
  "--standard=PSR12",
  "-",
}
