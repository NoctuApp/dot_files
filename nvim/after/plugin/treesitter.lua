-- import nvim-treesitter plugin
local treesitter = require("nvim-treesitter.configs")

-- configure treesitter
treesitter.setup({ -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  -- enable indentation
  indent = { enable = true },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  -- ensure these language parsers are installed
  ensure_installed = {
    "json",
    "javascript",
    "typescript",
    "tsx",
    "yaml",
    "html",
    "css",
    "prisma",
    "markdown",
    "markdown_inline",
    "svelte",
    "graphql",
    "bash",
    "lua",
    "vim",
    "dockerfile",
    "gitignore",
    "python",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
  -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  -- auto install above language parsers
  auto_install = true,
})

vim.keymap.set("n", "<leader>Ti", [[:TSInstall ]], { desc = "Treesitter Install" })
vim.keymap.set("n", "<leader>TI", ":TSInstallInfo<cr>", { desc = "Treesitter Install" })
