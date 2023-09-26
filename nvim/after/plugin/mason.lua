-- import mason
local mason = require("mason")

-- import mason-lspconfig
local mason_lspconfig = require("mason-lspconfig")

local mason_null_ls = require("mason-null-ls")

local mason_nvim_dap = require("mason-nvim-dap")

-- enable mason and configure icons
mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = {
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "svelte",
    "lua_ls",
    "graphql",
    "emmet_ls",
    "prismals",
    "pyright",
    "intelephense",
  },

  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
  ensure_installed = {
    "stylua",
    "prettierd",
    "phpcs",
    "php_cs_fixer",
  },
  automatic_installation = true,
})

mason_nvim_dap.setup({
  ensure_installed = {
    "python",
    "php",
  },
})
